<?php

namespace App\Http\Controllers\Api\Web;

use App\Http\Controllers\Api\Controller;
use App\Http\Resources\FileResource;
use App\Http\Resources\SessionResource;
use App\Http\Resources\TextLessonResource;
use App\Http\Resources\WebinarChapterResource;
use App\Models\Favorite;
use App\Models\CourseLearning;
use App\Models\Ticket;
use App\Models\Api\Webinar;
use App\Models\WebinarChapter;
use App\Models\WebinarFilterOption;
use App\Models\WebinarReport;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class WebinarController extends Controller
{


    public function index()
    {
        $books = Webinar::where('webinars.status', 'active')
            ->whereHas('teacher', function ($query) {
                $query->where('status', 'active')
                    ->where(function ($query) {
                        $query->where('ban', false)
                            ->orWhere(function ($query) {
                                $query->whereNotNull('ban_end_at')
                                    ->where('ban_end_at', '<', time());
                            });
                    });
            })
            ->where('private', false)
            ->handleFilters()
            ->get()->map(function ($book) {
                return $book->brief;
            });


        return apiResponse2(1, 'retrieved', trans('api.public.retrieved'), $books);

    }

    public function show($id)
    {
        $booksQuery = Webinar::where('status', 'active')
            ->where('private', false)->where('id', $id);

        abort_unless($booksQuery->count(), 404);

        $books = $booksQuery->orderBy('webinars.created_at', 'desc')
            ->orderBy('webinars.updated_at', 'desc')
            ->get()->map(function ($book) {
                return $book->details;
            })->first();

        return apiResponse2(1, 'retrieved', trans('api.public.retrieved'), $books);


    }

    public function content($id)
    {
        $user = apiAuth();
        $book = Webinar::where('id', $id)
            ->with([
                'chapters' => function ($query) use ($user) {
                    $query->where('status', WebinarChapter::$chapterActive);
                    $query->orderBy('order', 'asc');

                    $query->with([
                        'chapterItems' => function ($query) {
                            $query->orderBy('order', 'asc');
                        }
                    ]);
                },
                'quizzes' => function ($query) {
                    $query->where('status', 'active')
                        ->with(['quizResults', 'quizQuestions']);
                },
                'files' => function ($query) use ($user) {
                    $query->join('webinar_chapters', 'webinar_chapters.id', '=', 'files.chapter_id')
                        ->select('files.*', DB::raw('webinar_chapters.order as chapterOrder'))
                        ->where('files.status', WebinarChapter::$chapterActive)
                        ->orderBy('chapterOrder', 'asc')
                        ->orderBy('files.order', 'asc')
                        ->with([
                            'learningStatus' => function ($query) use ($user) {
                                $query->where('user_id', !empty($user) ? $user->id : null);
                            }
                        ]);
                },
                'textLessons' => function ($query) use ($user) {
                    $query->where('status', WebinarChapter::$chapterActive)
                        ->withCount(['attachments'])
                        ->orderBy('order', 'asc')
                        ->with([
                            'learningStatus' => function ($query) use ($user) {
                                $query->where('user_id', !empty($user) ? $user->id : null);
                            }
                        ]);
                },
                'sessions' => function ($query) use ($user) {
                    $query->where('status', WebinarChapter::$chapterActive)
                        ->orderBy('order', 'asc')
                        ->with([
                            'learningStatus' => function ($query) use ($user) {
                                $query->where('user_id', !empty($user) ? $user->id : null);
                            }
                        ]);
                },
                'assignments' => function ($query) {
                    $query->where('status', WebinarChapter::$chapterActive);
                },
            ])
            ->first();

        $chapters = collect(WebinarChapterResource::collection($book->chapters))->map(function ($item) {
            return array_merge(['type' => 'chapter'], $item);
        });
        $files = collect(FileResource::collection($book->files->whereNull('chapter_id')))->map(function ($item) {
            return array_merge(['type' => 'file'], $item);
        });
        $sessions = collect(SessionResource::collection($book->sessions->whereNull('chapter_id')))->map(function ($item) {
            return array_merge(['type' => 'session'], $item);
        });
        $textLessons = collect(TextLessonResource::collection($book->textLessons->whereNull('chapter_id')))->map(function ($item) {
            return array_merge(['type' => 'text_lesson'], $item);
        });

        $content = $chapters->merge($files)->merge($sessions)->merge($textLessons);
        return apiResponse2(1, 'retrieved', trans('api.public.retrieved'), $content);
    }

    public function learningStatus(Request $request, $book_id)
    {
        switch ($request->input('item')) {
            case 'file_id':
                $table = 'files';
                break;

            case 'session_id':
                $table = 'sessions';
                break;

            case 'text_lesson_id':
                $table = 'text_lessons';
                break;
            default :
                $table = null;

        }

        validateParam($request->all(), [
            'item' => 'required|in:file_id,session_id,text_lesson_id',
            'item_id' => ['required', Rule::exists($table, 'id')],
            'status' => 'required|boolean',
        ]);

        $user = apiAuth();
        $data = $request->all();

        $item = $data['item'];
        $item_id = $data['item_id'];
        $status = $data['status'];

        $course = Webinar::where('id', $book_id)->first();

        if (empty($course)) {
            abort(404);
        }


        if (!$course->checkUserHasBought($user)) {

            return apiResponse2(0, 'not_purchased', trans('api.webinar.not_purchased'));
        }


        $courseLearning = CourseLearning::where('user_id', $user->id)
            ->where($item, $item_id)->delete();


        if ($status) {

            CourseLearning::create([
                'user_id' => $user->id,
                $item => $item_id,
                'created_at' => time()
            ]);

            return apiResponse2(1, 'read', trans('api.learning_status.read'));

        }
        return apiResponse2(1, 'unread', trans('api.learning_status.unread'));


    }

    public function report(Request $request, $id)
    {
        $user = apiAuth();
        validateParam($request->all(), [
            'reason' => 'required|string',
            'message' => 'required|string',
        ]);

        $book = Webinar::select('id', 'status')
            ->where('id', $id)
            ->where('status', 'active')
            ->first();
        if (!$book) {
            abort(404);
        }

        WebinarReport::create([
            'user_id' => $user->id,
            'webinar_id' => $book->id,
            'reason' => $request->post('reason'),
            'message' => $request->post('message'),
            'created_at' => time()
        ]);
        return apiResponse2(1, 'reported', trans('courses.reported'));
    }

    public static function brief($books, $single = false)
    {
        if ($single) {
            $books = collect([$books]);
        }
        //
        $user = apiAuth();
        $books = $books->map(function ($book) use ($user) {

            $hasBought = $book->checkUserHasBought($user);

            /* progressbar status */
            $progress = self::progress($book);

            /* is user favorite */
            $is_favorite = self::isFavorite($book);

            /* live webinar status */
            $live_webinar_status = self::liveWebinarStatus($book);

            return [
                'auth' => ($user) ? true : false,
                'id' => $book->id,
                'status' => $book->status,
                'title' => $book->title,
                'type' => $book->type,
                'live_webinar_status' => $live_webinar_status,
                'auth_has_bought' => ($user) ? $hasBought : null,

                'price' => $book->price,
                'price_with_discount' => ($book->activeSpecialOffer()) ? (
                number_format($book->price - ($book->price * $book->activeSpecialOffer()->percent / 100), 2)) : false,
                'active_special_offer' => $book->activeSpecialOffer(),

                'duration' => $book->duration,
                'teacher' => [
                    'full_name' => $book->teacher->full_name,
                    'avatar' => $book->teacher->getAvatar(),
                    'rate' => $book->teacher->rates(),
                ],
                'rate' => $book->getRate(),
                'discount' => $book->getDiscount(),
                'created_at' => $book->created_at,
                'start_date' => $book->start_date,
                'progress' => $book->getProgress(),
                'category' => $book->category->title,

            ];
        });

        if ($single) {
            return $books->first();
        }

        return [
            'count' => count($books),
            'webinars' => $books,
        ];
    }

    public function details($books)
    {
        $user = apiAuth();

        $books = $books->map(function ($book) use ($user) {
            $hasBought = $book->checkUserHasBought($user);

            /* progressbar status */
            $progress = $this->progress($book);

            /* is user favorite */
            $is_favorite = $this->isFavorite($book);

            /* live webinar status */
            $live_webinar_status = $this->liveWebinarStatus($book);

            return [
                'auth' => ($user) ? true : false,
                'id' => $book->id,
                'title' => $book->title,
                'type' => $book->type,
                'live_webinar_status' => $live_webinar_status,
                'auth_has_bought' => ($user) ? $hasBought : null,
                'price' => $book->price,
                'price_with_discount' => ($book->activeSpecialOffer()) ? (
                number_format($book->price - ($book->price * $book->activeSpecialOffer()->percent / 100), 2)) : false,
                'active_special_offer' => $book->activeSpecialOffer(),

                'duration' => $book->duration,
                'teacher' => [
                    'full_name' => $book->teacher->full_name,
                    'avatar' => $book->teacher->getAvatar(),
                    'rate' => $book->teacher->rates(),
                ],

                'sessions_count' => $book->sessions->count(),
                'text_lessons_count' => $book->textLessons->count(),
                'files_count' => $book->files->count(),
                /*    $sessionChapters = $course->chapters->where('type', WebinarChapter::$chapterSession);
                $sessionsWithoutChapter = $course->sessions->whereNull('chapter_id');*/

                'sessions_without_chapter' => $book->sessions->whereNull('chapter_id')->map(function ($session) {
                    return [
                        'id' => $session->id,
                        'title' => $session->title,
                        'description' => $session->description,
                        'date' => dateTimeFormat($session->date, 'j M Y | H:i')
                    ];

                }),
                'sessions_with_chapter' => $book->chapters->where('type', WebinarChapter::$chapterSession)->map(function ($chapter) {
                    $chapter->sessions->map(function ($session) {
                        return [
                            'id' => $session->id,
                            'title' => $session->title,
                            'description' => $session->description,
                            'date' => dateTimeFormat($session->date, 'j M Y | H:i')
                        ];
                    });


                }),

                'rate' => $book->getRate(),
                'rate_type' => [
                    'content_quality' => $book->reviews->count() > 0 ? round($book->reviews->avg('content_quality'), 1) : 0,
                    'instructor_skills' => $book->reviews->count() > 0 ? round($book->reviews->avg('instructor_skills'), 1) : 0,
                    'purchase_worth' => $book->reviews->count() > 0 ? round($book->reviews->avg('purchase_worth'), 1) : 0,
                    'support_quality' => $book->reviews->count() > 0 ? round($book->reviews->avg('support_quality'), 1) : 0,

                ],
                'reviews_count' => $book->reviews->count(),
                'reviews' => $book->reviews->map(function ($review) {
                    return [
                        'user' => [
                            'full_name' => $review->creator->full_name,
                            'avatar' => $review->creator->getAvatar(),
                        ],
                        'create_at' => $review->created_at,
                        'description' => $review->description,
                        'replies' => $review->comments->map(function ($reply) {
                            return [
                                'user' => [
                                    'full_name' => $reply->user->full_name,
                                    'avatar' => $reply->user->getAvatar(),
                                ],
                                'create_at' => $reply->created_at,
                                'comment' => $reply->comment,
                            ];

                        })


                    ];
                }),
                'comments' => $book->comments->map(function ($item) {
                    return [
                        'user' => [
                            'full_name' => $item->user->full_name,
                            'avatar' => $item->user->getAvatar(),
                        ],
                        'create_at' => $item->created_at,
                        'comment' => $item->comment,
                        'replies' => $item->replies->map(function ($reply) {
                            return [
                                'user' => [
                                    'full_name' => $reply->user->full_name,
                                    'avatar' => $reply->user->getAvatar(),
                                ],
                                'create_at' => $reply->created_at,
                                'comment' => $reply->comment,
                            ];

                        })
                    ];
                }),
                'discount' => $book->getDiscount(),
                'created_at' => $book->created_at,
                'start_date' => $book->start_date,

                'progress' => $progress,
                //'progressa' => $book->$progress,
                'category' => $book->category->title,
                'video_demo' => $book->video_demo,
                'image' => $book->getImage(),
                'description' => $book->description,
                'isDownloadable' => $book->isDownloadable(),
                'support' => $book->support ? true : false,
                'certificate' => ($book->quizzes->where('certificate', 1)->count() > 0) ? true : false,
                'quizzes_count' => $book->quizzes->where('status', \App\models\Quiz::ACTIVE)->count(),
                'is_favorite' => $is_favorite,
                'students_count' => $book->sales->count(),
                'tags' => $book->tags,
                'tickets' => $book->tickets->map(function ($ticket) {
                    return [
                        'id' => $ticket->id,
                        'title' => $ticket->title,
                        'sub_title' => $ticket->getSubTitle(),
                        'discount' => $ticket->discount,
                        //  'order' => $ticket->order,
                        'is_valid' => $ticket->isValid(),

                    ];
                }),
                'prerequisites' => $book->prerequisites->map(function ($prerequisite) {
                    return [
                        'required' => $prerequisite->required,
                        'webinar' => self::brief($prerequisite->prerequisiteWebinar, true)
                    ];
                }),
                'faqs' => $book->faqs

            ];
        });
        return [
            'count' => count($books),
            'webinars' => $books,
        ];
    }

    public static function getSingle($id)
    {
        $book = Webinar::where('status', 'active')
            ->where('private', false)->where('id', $id)->first();
        //  dd($book->id);
        if (!$book) {
            return null;
        }
        return self::brief($book, true);

    }

    public function handleFilters($request, $query)
    {
        $offset = $request->get('offset', null);
        $limit = $request->get('limit', null);
        $upcoming = $request->get('upcoming', null);
        $isFree = $request->get('free', null);
        $withDiscount = $request->get('discount', null);
        $isDownloadable = $request->get('downloadable', null);
        $sort = $request->get('sort', null);
        $filterOptions = $request->get('filter_option', null);
        $typeOptions = $request->get('type', []);
        $moreOptions = $request->get('moreOptions', []);
        $category = $request->get('cat', null);

        if (!empty($category) and is_numeric($category)) {
            $query->where('category_id', $category);
        }
        if (!empty($upcoming) and $upcoming == 1) {
            $query->whereNotNull('start_date')
                ->where('start_date', '>=', time());
        }

        if (!empty($isFree) and $isFree == 1) {
            $query->where(function ($qu) {
                $qu->whereNull('price')
                    ->orWhere('price', '0');
            });
        }

        if (!empty($isDownloadable) and $isDownloadable == 1) {
            $query->where('downloadable', 1);
        }

        if (!empty($withDiscount) and $withDiscount == 1) {
            $now = time();
            $bookIdsHasDiscount = [];

            $tickets = Ticket::where('start_date', '<', $now)
                ->where('end_date', '>', $now)
                ->get();

            foreach ($tickets as $ticket) {
                if ($ticket->isValid()) {
                    $bookIdsHasDiscount[] = $ticket->webinar_id;
                }
            }

            $bookIdsHasDiscount = array_unique($bookIdsHasDiscount);

            $query->whereIn('webinars.id', $bookIdsHasDiscount);
        }

        if (!empty($sort)) {
            if ($sort == 'expensive') {
                $query->orderBy('price', 'desc');
            }

            if ($sort == 'newest') {
                $query->orderBy('created_at', 'desc');
            }

            if ($sort == 'inexpensive') {
                $query->orderBy('price', 'asc');
            }

            if ($sort == 'bestsellers') {
                $query->whereHas('sales')
                    ->with('sales')
                    ->get()
                    ->sortBy(function ($qu) {
                        return $qu->sales->count();
                    });
            }

            if ($sort == 'best_rates') {
                $query->whereHas('reviews', function ($query) {
                    $query->where('status', 'active');
                })->with('reviews')
                    ->get()
                    ->sortBy(function ($qu) {
                        return $qu->reviews->avg('rates');
                    });
            }
        }

        if (!empty($filterOptions)) {
            $bookIdsFilterOptions = WebinarFilterOption::where('filter_option_id', $filterOptions)
                ->pluck('webinar_id')
                ->toArray();

            $query->whereIn('webinars.id', $bookIdsFilterOptions);
        }

        if (!empty($typeOptions) and is_array($typeOptions)) {
            $query->whereIn('type', $typeOptions);
        }

        if (!empty($moreOptions) and is_array($moreOptions)) {
            if (in_array('subscribe', $moreOptions)) {
                $query->where('subscribe', 1);
            }

            if (in_array('certificate_included', $moreOptions)) {
                $query->whereHas('quizzes', function ($query) {
                    $query->where('certificate', 1)
                        ->where('status', 'active');
                });
            }

            if (in_array('with_quiz', $moreOptions)) {
                $query->whereHas('quizzes', function ($query) {
                    $query->where('status', 'active');
                });
            }

            if (in_array('featured', $moreOptions)) {
                $query->whereHas('feature', function ($query) {
                    $query->whereIn('page', ['home_categories', 'categories'])
                        ->where('status', 'publish');
                });
            }
        }

        if (!empty($offset) && !empty($limit)) {
            $query->skip($offset);
        }
        if (!empty($limit)) {
            $query->take($limit);
        }
        return $query;
    }

    private static function liveWebinarStatus($book)
    {
        $live_webinar_status = false;
        if ($book->type == 'webinar') {
            if ($book->start_date > time()) {
                $live_webinar_status = 'not_conducted';
            } elseif ($book->isProgressing()) {
                $live_webinar_status = 'in_progress';
            } else {
                $live_webinar_status = 'finished';
            }
        }
        return $live_webinar_status;


    }

    private static function progress($book)
    {
        $user = apiAuth();
        /* progressbar status */
        $hasBought = $book->checkUserHasBought($user);
        $progress = null;
        if ($hasBought or $book->isWebinar()) {
            if ($book->isWebinar()) {
                if ($hasBought and $book->isProgressing()) {
                    $progress = $book->getProgress();
                } else {
                    $progress = $book->sales()->count() . '/' . $book->capacity;
                }
            } else {
                $progress = $book->getProgress();
            }
        }

        return $progress;
    }

    private static function isFavorite($book)
    {
        $user = apiAuth();
        $isFavorite = false;
        if (!empty($user)) {
            $isFavorite = Favorite::where('webinar_id', $book->id)
                ->where('user_id', $user->id)
                ->first();
        }
        return ($isFavorite) ? true : false;
    }

}

<?php

namespace App\Http\Controllers\Admin;

use App\Exports\QuizResultsExport;
use App\Exports\QuizzesAdminExport;
use App\Http\Controllers\Controller;
use App\Models\Quiz;
use App\Models\QuizzesQuestion;
use App\Models\QuizzesResult;
use App\Models\Translation\QuizTranslation;
use App\Models\Webinar;
use App\Models\WebinarChapter;
use App\Models\WebinarChapterItem;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class QuizNewController extends Controller
{
    public function index(Request $request)
    {
        //dd("list");
        $this->authorize('admin_quizzes_list');

        removeContentLocale();
        $series = DB::table('quizzes_serie')->get();
        foreach($series as $serie){
            //dd($serie);
        }
        return view('admin.quizzes.lists', ['series' => $series]);
    }

    public function newSerie(){
        //if (\View::exists('admin.quizzes.newSerie'))
            return view('admin.quizzes.add-serie');
    }

    public function serieQuizzes(Request $request, $serie){
        $quizzes = DB::table('quizzes_new')->where('serie_id', $serie)->paginate(3);
        foreach ($quizzes as $quiz){
            dd($quiz);
            $type = DB::table('quiz_types')->where('id',$quiz->quiz_type_id)->first();
            $quiz->question_type = $type->type;
        }
        $serie   = DB::table('quizzes_serie')->where('id', $serie)->first();
        return view('admin.quizzes.quizzes_serie', ['quizzes' => $quizzes, 'serie' => $serie]);
    }

    public function showQuiz($quizId){
        $quiz = DB::table('quizzes_new')->where('id', $quizId)->first();
        $quiz->suggestions = json_decode($quiz->suggestions, true);
        $serie = DB::table('quizzes_serie')->where('id',$quiz->serie_id)->first();
       // dd($quiz,$serie);

        return view('quizTemplate.listen-and-complete', ['quiz' => $quiz, 'serie' => $serie]);
    }
    public function showSerie ($serie, $currentQuizIndex)
    {
        $serieData = DB::table('quizzes_serie')->where('id', $serie)->first();
        $quizzes = DB::table('quizzes_new')->where('serie_id', $serie)->get()->toArray();
        $next = $currentQuizIndex + 1;

        if($next > count($quizzes)){
            echo "<script>alert('لقد اتممت السلسلة بنجاح')</script>";
            return back();
        }
        $currentQuizData = $quizzes[$currentQuizIndex];
        $currentQuizData->suggestions = json_decode($currentQuizData->suggestions, true);
        /**
         * Dynamic Template

        $getTemplateByQuizType = DB::table('quiz_types')->select('template')->where('id', $currentQuizData->quiz_type_id)->first();

        return view("quizTemplate.$getTemplateByQuizType->template", ['quiz' => $currentQuizData,'serie' => $serieData]);
        $currentQuizData->suggestions = json_decode($currentQuizData->suggestions, true);

         */
        return view("admin.quizzes.serie", ['quiz'=> $currentQuizData,'quizzes' => $quizzes, 'next' => $next, 'serie' => $serieData]);
    }
    public function display_quiz_for_student($quizId){
        $quiz = DB::table('quizzes_new')->where('id',$quizId)->first();
        return view('admin.quizzes.quizzes_templates.index');
    }

    public function add_quiz_to_serie(Request $request, $serie){
        if($request->file('picture_file')){
            $fileNamePic = time().'_'.$request->picture_file->getClientOriginalName();
            $filePathPic = $request->file('picture_file')->storeAs('uploads', $fileNamePic, 'public');
            $fileNamePic = time().'_'.$request->picture_file->getClientOriginalName();
            $filePathPic = '/store/' . $filePathPic;
        }
        if($request->file('sound_file')){
            $fileNameSound = time().'_'.$request->sound_file->getClientOriginalName();
            $filePathSound = $request->file('sound_file')->storeAs('uploads', $fileNameSound, 'public');
            $fileNameSound = time().'_'.$request->sound_file->getClientOriginalName();
            $filePathSound = '/store/' . $filePathSound;
        }
        if(count($request->input())){

            $data = $request->input();
            $data['serie_id'] = $serie;
            unset($data['_token']);
            $data['sound_file'] = $filePathSound;
            $data['picture_file'] = $filePathPic;

            //$data['suggestions'] = mb_convert_encoding(json_encode($data['suggestions']), 'UTF-8',mb_detect_encoding(json_encode($data['suggestions'])));

            $quizId = DB::table('quizzes_new')->insertGetId($data);
            $data['suggestions'] = json_decode($data['suggestions']);
            //dump($quizId);
            /*foreach ($data['suggestions'] as $suggestion){
                $suggestion = get_object_vars($suggestion);
                foreach ($suggestion as $key => $value ){
                    DB::table('quiz_new_suggestions')->insert(['key_sug' => $key, 'value' => $value,'quiz_id' => $quizId]);
                }

            }*/
            //dd($quizId);
        }
        $quizTypes = DB::table('quiz_types')->get();
        $serie   = DB::table('quizzes_serie')->where('id', $serie)->first();
        return view('admin.quizzes.add_a_quiz_to_serie', [
            'serie' => $serie,
            'quizTypes' => $quizTypes
        ])->with('success',"لقد تم اضافة التمارين");
    }

    public function display_quiz(Request $request, $quiz){
        $quiz = DB::table('quizzes_new')->where('id', $quiz)->first();
        $quiz->suggestions = json_decode($quiz->suggestions, true);
        //dd($quiz);
        $serie = DB::table('quizzes_serie')->where('id', $quiz->serie_id)->first();
        return view('admin.quizzes.display_quiz', ['quiz' => $quiz, 'serie'=>$serie]);
    }
    private function filters($query, $request)
    {
        $from = $request->get('from', null);
        $to = $request->get('to', null);
        $title = $request->get('title', null);
        $sort = $request->get('sort', null);
        $teacher_ids = $request->get('teacher_ids', null);
        $book_ids = $request->get('webinar_ids', null);
        $status = $request->get('status', null);

        $query = fromAndToDateFilter($from, $to, $query, 'created_at');

        if (!empty($title)) {
            $query->whereTranslationLike('title', '%' . $title . '%');
        }

        if (!empty($sort)) {
            switch ($sort) {
                case 'have_certificate':
                    $query->where('certificate', true);
                    break;
                case 'students_count_asc':
                    $query->join('quizzes_results', 'quizzes_results.quiz_id', '=', 'quizzes.id')
                        ->select('quizzes.*', 'quizzes_results.quiz_id', DB::raw('count(quizzes_results.quiz_id) as result_count'))
                        ->groupBy('quizzes_results.quiz_id')
                        ->orderBy('result_count', 'asc');
                    break;

                case 'students_count_desc':
                    $query->join('quizzes_results', 'quizzes_results.quiz_id', '=', 'quizzes.id')
                        ->select('quizzes.*', 'quizzes_results.quiz_id', DB::raw('count(quizzes_results.quiz_id) as result_count'))
                        ->groupBy('quizzes_results.quiz_id')
                        ->orderBy('result_count', 'desc');
                    break;
                case 'passed_count_asc':
                    $query->join('quizzes_results', 'quizzes_results.quiz_id', '=', 'quizzes.id')
                        ->select('quizzes.*', 'quizzes_results.quiz_id', DB::raw('count(quizzes_results.quiz_id) as result_count'))
                        ->where('quizzes_results.status', 'passed')
                        ->groupBy('quizzes_results.quiz_id')
                        ->orderBy('result_count', 'asc');
                    break;

                case 'passed_count_desc':
                    $query->join('quizzes_results', 'quizzes_results.quiz_id', '=', 'quizzes.id')
                        ->select('quizzes.*', 'quizzes_results.quiz_id', DB::raw('count(quizzes_results.quiz_id) as result_count'))
                        ->where('quizzes_results.status', 'passed')
                        ->groupBy('quizzes_results.quiz_id')
                        ->orderBy('result_count', 'desc');
                    break;

                case 'grade_avg_asc':
                    $query->join('quizzes_results', 'quizzes_results.quiz_id', '=', 'quizzes.id')
                        ->select('quizzes.*', 'quizzes_results.quiz_id', 'quizzes_results.user_grade', DB::raw('avg(quizzes_results.user_grade) as grade_avg'))
                        ->groupBy('quizzes_results.quiz_id')
                        ->orderBy('grade_avg', 'asc');
                    break;

                case 'grade_avg_desc':
                    $query->join('quizzes_results', 'quizzes_results.quiz_id', '=', 'quizzes.id')
                        ->select('quizzes.*', 'quizzes_results.quiz_id', 'quizzes_results.user_grade', DB::raw('avg(quizzes_results.user_grade) as grade_avg'))
                        ->groupBy('quizzes_results.quiz_id')
                        ->orderBy('grade_avg', 'desc');
                    break;

                case 'created_at_asc':
                    $query->orderBy('created_at', 'asc');
                    break;

                case 'created_at_desc':
                    $query->orderBy('created_at', 'desc');
                    break;
            }
        } else {
            $query->orderBy('created_at', 'desc');
        }

        if (!empty($teacher_ids)) {
            $query->whereIn('creator_id', $teacher_ids);
        }

        if (!empty($book_ids)) {
            $query->whereIn('webinar_id', $book_ids);
        }

        if (!empty($status) and $status !== 'all') {
            $query->where('status', strtolower($status));
        }

        return $query;
    }

    public function create()
    {
        $this->authorize('admin_quizzes_create');

        $data = [
            'pageTitle' => trans('quiz.new_quiz'),
        ];

        return view('admin.quizzes.create', $data);
    }

    public function store(Request $request)
    {
        $this->authorize('admin_quizzes_create');

        $data = $request->get('ajax')['new'];
        $locale = $data['locale'] ?? getDefaultLocale();

        $rules = [
            'title' => 'required|max:255',
            'webinar_id' => 'required|exists:webinars,id',
            'pass_mark' => 'required',
        ];

        $validate = Validator::make($data, $rules);

        if ($validate->fails()) {
            return response()->json([
                'code' => 422,
                'errors' => $validate->errors()
            ], 422);
        }


        $book = Webinar::where('id', $data['webinar_id'])
            ->first();

        if (!empty($book)) {
            $chapter = null;

            if (!empty($data['chapter_id'])) {
                $chapter = WebinarChapter::where('id', $data['chapter_id'])
                    ->where('webinar_id', $book->id)
                    ->first();
            }

            $quiz = Quiz::create([
                'webinar_id' => $book->id,
                'chapter_id' => !empty($chapter) ? $chapter->id : null,
                'creator_id' => $book->creator_id,
                'attempt' => $data['attempt'] ?? null,
                'pass_mark' => $data['pass_mark'],
                'time' => $data['time'] ?? null,
                'status' => (!empty($data['status']) and $data['status'] == 'on') ? Quiz::ACTIVE : Quiz::INACTIVE,
                'certificate' => (!empty($data['certificate']) and $data['certificate'] == 'on'),
                'display_questions_randomly' => (!empty($data['display_questions_randomly']) and $data['display_questions_randomly'] == 'on'),
                'expiry_days' => (!empty($data['expiry_days']) and $data['expiry_days'] > 0) ? $data['expiry_days'] : null,
                'created_at' => time(),
            ]);

            QuizTranslation::updateOrCreate([
                'quiz_id' => $quiz->id,
                'locale' => mb_strtolower($locale),
            ], [
                'title' => $data['title'],
            ]);

            if (!empty($quiz->chapter_id)) {
                WebinarChapterItem::makeItem($book->creator_id, $quiz->chapter_id, $quiz->id, WebinarChapterItem::$chapterQuiz);
            }

            // Send Notification To All Students
            $book->sendNotificationToAllStudentsForNewQuizPublished($quiz);

            if ($request->ajax()) {

                $redirectUrl = '';

                if (empty($data['is_webinar_page'])) {
                    $redirectUrl = getAdminPanelUrl('/quizzes/' . $quiz->id . '/edit');
                }

                return response()->json([
                    'code' => 200,
                    'redirect_url' => $redirectUrl
                ]);
            } else {
                return redirect()->route('adminEditQuiz', ['id' => $quiz->id]);
            }
        } else {
            return back()->withErrors([
                'webinar_id' => trans('validation.exists', ['attribute' => trans('admin/main.course')])
            ]);
        }
    }

    public function edit(Request $request, $id)
    {
        $this->authorize('admin_quizzes_edit');

        $quiz = Quiz::query()->where('id', $id)
            ->with([
                'quizQuestions' => function ($query) {
                    $query->orderBy('order', 'asc');
                    $query->with('quizzesQuestionsAnswers');
                },
            ])
            ->first();

        if (empty($quiz)) {
            abort(404);
        }

        $creator = $quiz->creator;

        $books = Webinar::where('status', 'active')
            ->where(function ($query) use ($creator) {
                $query->where('teacher_id', $creator->id)
                    ->orWhere('creator_id', $creator->id);
            })->get();

        $locale = $request->get('locale', app()->getLocale());
        if (empty($locale)) {
            $locale = app()->getLocale();
        }
        storeContentLocale($locale, $quiz->getTable(), $quiz->id);

        $quiz->title = $quiz->getTitleAttribute();
        $quiz->locale = mb_strtoupper($locale);

        $chapters = collect();

        if (!empty($quiz->webinar)) {
            $chapters = $quiz->webinar->chapters;
        }

        $data = [
            'pageTitle' => trans('public.edit') . ' ' . $quiz->title,
            'webinars' => $books,
            'quiz' => $quiz,
            'quizQuestions' => $quiz->quizQuestions,
            'creator' => $creator,
            'chapters' => $chapters,
            'locale' => mb_strtolower($locale),
            'defaultLocale' => getDefaultLocale(),
        ];

        return view('admin.quizzes.edit', $data);
    }

    public function update(Request $request, $id)
    {
        $quiz = Quiz::query()->findOrFail($id);
        $user = $quiz->creator;
        $quizQuestionsCount = $quiz->quizQuestions->count();

        $data = $request->get('ajax')[$id];
        $locale = $data['locale'] ?? getDefaultLocale();

        $rules = [
            'title' => 'required|max:255',
            'webinar_id' => 'required|exists:webinars,id',
            'pass_mark' => 'required',
            'display_number_of_questions' => 'required_if:display_limited_questions,on|nullable|between:1,' . $quizQuestionsCount
        ];

        $validate = Validator::make($data, $rules);

        if ($validate->fails()) {
            return response()->json([
                'code' => 422,
                'errors' => $validate->errors()
            ], 422);
        }

        $book = null;
        $chapter = null;

        if (!empty($data['webinar_id'])) {
            $book = Webinar::where('id', $data['webinar_id'])->first();

            if (!empty($book) and !empty($data['chapter_id'])) {
                $chapter = WebinarChapter::where('id', $data['chapter_id'])
                    ->where('webinar_id', $book->id)
                    ->first();
            }
        }

        $quiz->update([
            'webinar_id' => !empty($book) ? $book->id : null,
            'chapter_id' => !empty($chapter) ? $chapter->id : null,
            'attempt' => $data['attempt'] ?? null,
            'pass_mark' => $data['pass_mark'],
            'time' => $data['time'] ?? null,
            'status' => (!empty($data['status']) and $data['status'] == 'on') ? Quiz::ACTIVE : Quiz::INACTIVE,
            'certificate' => (!empty($data['certificate']) and $data['certificate'] == 'on'),
            'display_limited_questions' => (!empty($data['display_limited_questions']) and $data['display_limited_questions'] == 'on'),
            'display_number_of_questions' => (!empty($data['display_limited_questions']) and $data['display_limited_questions'] == 'on' and !empty($data['display_number_of_questions'])) ? $data['display_number_of_questions'] : null,
            'display_questions_randomly' => (!empty($data['display_questions_randomly']) and $data['display_questions_randomly'] == 'on'),
            'expiry_days' => (!empty($data['expiry_days']) and $data['expiry_days'] > 0) ? $data['expiry_days'] : null,
            'updated_at' => time(),
        ]);

        if (!empty($quiz)) {
            QuizTranslation::updateOrCreate([
                'quiz_id' => $quiz->id,
                'locale' => mb_strtolower($locale),
            ], [
                'title' => $data['title'],
            ]);

            $checkChapterItem = WebinarChapterItem::where('user_id', $user->id)
                ->where('item_id', $quiz->id)
                ->where('type', WebinarChapterItem::$chapterQuiz)
                ->first();

            if (!empty($quiz->chapter_id)) {
                if (empty($checkChapterItem)) {
                    WebinarChapterItem::makeItem($user->id, $quiz->chapter_id, $quiz->id, WebinarChapterItem::$chapterQuiz);
                } elseif ($checkChapterItem->chapter_id != $quiz->chapter_id) {
                    $checkChapterItem->delete(); // remove quiz from old chapter and assign it to new chapter

                    WebinarChapterItem::makeItem($user->id, $quiz->chapter_id, $quiz->id, WebinarChapterItem::$chapterQuiz);
                }
            } else if (!empty($checkChapterItem)) {
                $checkChapterItem->delete();
            }
        }

        removeContentLocale();

        if ($request->ajax()) {
            return response()->json([
                'code' => 200
            ]);
        } else {
            return redirect()->back();
        }
    }

    public function delete(Request $request, $id)
    {
        $this->authorize('admin_quizzes_delete');

        $quiz = Quiz::findOrFail($id);

        $quiz->delete();

        $checkChapterItem = WebinarChapterItem::where('item_id', $id)
            ->where('type', WebinarChapterItem::$chapterQuiz)
            ->first();

        if (!empty($checkChapterItem)) {
            $checkChapterItem->delete();
        }

        if ($request->ajax()) {
            return response()->json([
                'code' => 200
            ], 200);
        }

        return redirect()->back();
    }

    public function results($id)
    {
        $this->authorize('admin_quizzes_results');

        $quizzesResults = QuizzesResult::where('quiz_id', $id)
            ->with([
                'quiz' => function ($query) {
                    $query->with(['teacher']);
                },
                'user'
            ])
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        $data = [
            'pageTitle' => trans('admin/pages/quizResults.quiz_result_list_page_title'),
            'quizzesResults' => $quizzesResults,
            'quiz_id' => $id
        ];

        return view('admin.quizzes.results', $data);
    }

    public function resultsExportExcel($id)
    {
        $this->authorize('admin_quiz_result_export_excel');

        $quizzesResults = QuizzesResult::where('quiz_id', $id)
            ->with([
                'quiz' => function ($query) {
                    $query->with(['teacher']);
                },
                'user'
            ])
            ->orderBy('created_at', 'desc')
            ->get();

        $export = new QuizResultsExport($quizzesResults);

        return Excel::download($export, 'quiz_result.xlsx');
    }

    public function resultDelete($result_id)
    {
        $this->authorize('admin_quizzes_results_delete');

        $quizzesResults = QuizzesResult::where('id', $result_id)->first();

        if (!empty($quizzesResults)) {
            $quizzesResults->delete();
        }

        return redirect()->back();
    }

    public function exportExcel(Request $request)
    {
        $this->authorize('admin_quizzes_lists_excel');

        $query = Quiz::query();

        $query = $this->filters($query, $request);

        $quizzes = $query->with([
            'webinar',
            'teacher',
            'quizQuestions',
            'quizResults',
        ])->get();

        return Excel::download(new QuizzesAdminExport($quizzes), trans('quiz.quizzes') . '.xlsx');
    }

    public function orderItems(Request $request, $quizId)
    {
        $data = $request->all();

        $validator = Validator::make($data, [
            'items' => 'required',
            'table' => 'required',
        ]);

        if ($validator->fails()) {
            return response([
                'code' => 422,
                'errors' => $validator->errors(),
            ], 422);
        }

        $quiz = Quiz::query()->where('id', $quizId)->first();

        if (!empty($quiz)) {
            $tableName = $data['table'];
            $itemIds = explode(',', $data['items']);

            if (!is_array($itemIds) and !empty($itemIds)) {
                $itemIds = [$itemIds];
            }

            if (!empty($itemIds) and is_array($itemIds) and count($itemIds)) {
                switch ($tableName) {
                    case 'quizzes_questions':
                        foreach ($itemIds as $order => $id) {
                            QuizzesQuestion::where('id', $id)
                                ->where('quiz_id', $quiz->id)
                                ->update(['order' => ($order + 1)]);
                        }
                        break;
                }
            }
        }

        return response()->json([
            'title' => trans('public.request_success'),
            'msg' => trans('update.items_sorted_successful')
        ]);
    }
}

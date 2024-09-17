<?php

namespace App\Http\Controllers\Api\Panel;

use App\Http\Controllers\Controller;
use App\Http\Resources\CourseNoticeboardResource;
use App\Models\Api\Webinar;
use App\Models\CourseNoticeboard;
use Illuminate\Http\Request;

class CourseNoticeboardController extends Controller
{
    public function index($book_id)
    {
        $book = Webinar::find($book_id);
        abort_unless($book, 404);
        $user = apiAuth();
        // noticeboards
        if ($book->creator_id != $user->id and $book->teacher_id != $user->id and !$user->isAdmin()) {
            $unReadCourseNoticeboards = CourseNoticeboard::where('webinar_id', $book->id)
                ->whereDoesntHave('noticeboardStatus', function ($query) use ($user) {
                    $query->where('user_id', $user->id);
                })
                ->count();

            if ($unReadCourseNoticeboards) {
                $url = $book->getNoticeboardsPageUrl();
            //    return redirect($url);
            }
        }
        $noticeboards = $book
            ->noticeboards;
        //  dd($noticeboards) ;
        return apiResponse2(1, 'retrieved', trans('api.public.retrieved'), CourseNoticeboardResource::collection($noticeboards));

    }
}

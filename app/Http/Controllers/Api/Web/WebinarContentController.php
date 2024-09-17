<?php

namespace App\Http\Controllers\Api\Web;

use App\Http\Controllers\Controller;
use App\Http\Resources\QuizResource;
use App\Models\Api\Quiz;
use App\Models\Api\Webinar;
use Illuminate\Http\Request;

class WebinarContentController extends Controller
{
    public function quizzes($book_id)
    {
        $quizzes = Quiz::where('webinar_id', $book_id)->where('status', 'active')->get();

        return apiResponse2(1, 'retrieved', trans('api.public.retrieved'), QuizResource::collection($quizzes));
    }

    public function certificates($book_id)
    {
        $book = Webinar::find($book_id);

        $quizzes = Quiz::with('webinar')->where('webinar_id', $book_id)->where('status', 'active')
            ->where('certificate', 1)->get();
        $certificates = $quizzes->map(function ($quiz) {
            return [
                'type' => 'quiz',
                'link' => route('quiz.show', $quiz->id),
                'title' => $quiz->title,
                'created_at' => $quiz->created_at,

            ];
        });
        if ($book->certificate == 1) {
            $certificates->push([
                'type' => 'completion',
                'title' => $book->title,
                'created_at' => $book->created_at,

            ]);
        }

        return apiResponse2(1, 'retrieved', trans('api.public.retrieved'), $certificates);
    }
}

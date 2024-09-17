<?php

namespace App\Http\Controllers\Admin\traits;

trait WebinarChangeCreator
{
    private function webinarChangedCreator($book)
    {
        // Chapters
        $book->chapters()->update([
            'user_id' => $book->creator_id
        ]);

        // Sessions
        $book->sessions()->update([
            'creator_id' => $book->creator_id
        ]);

        // FAQs
        $book->faqs()->update([
            'creator_id' => $book->creator_id
        ]);

        // Files
        $book->files()->update([
            'creator_id' => $book->creator_id
        ]);

        // Text Lessons
        $book->textLessons()->update([
            'creator_id' => $book->creator_id
        ]);

        // Quizzes
        $book->quizzes()->update([
            'creator_id' => $book->creator_id
        ]);

        // Assignments
        $book->assignments()->update([
            'creator_id' => $book->creator_id
        ]);

        // Webinar Extra Description
        $book->webinarExtraDescription()->update([
            'creator_id' => $book->creator_id
        ]);

        // Tickets
        $book->tickets()->update([
            'creator_id' => $book->creator_id
        ]);

    }
}

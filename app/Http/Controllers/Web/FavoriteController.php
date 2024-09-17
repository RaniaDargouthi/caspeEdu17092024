<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Favorite;
use App\Models\Webinar;

class FavoriteController extends Controller
{
    public function toggle($slug)
    {
        $userId = auth()->id();
        $book = Webinar::where('slug', $slug)
            ->where('status', 'active')
            ->first();

        if (!empty($book)) {

            $isFavorite = Favorite::where('webinar_id', $book->id)
                ->where('user_id', $userId)
                ->first();

            if (empty($isFavorite)) {
                Favorite::create([
                    'user_id' => $userId,
                    'webinar_id' => $book->id,
                    'created_at' => time()
                ]);
            } else {
                $isFavorite->delete();
            }
        }

        return response()->json([], 200);
    }
}

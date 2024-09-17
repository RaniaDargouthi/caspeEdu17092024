<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuizzesNew extends Model
{
    use HasFactory;
    protected $table = 'quizzes_new'; // Nom de votre table

    protected $guarded = []; // Tous les attributs peuvent être affectés en masse

    // Relation avec le modèle Serie
    public function Serie()
    {
        return $this->belongsTo(QuizzesSerie::class, 'serie_id');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('studymaterials', function (Blueprint $table) {
            $table->integer('id'); // Crée une colonne 'id' auto-incrémentée
            $table->string('name')->nullable(); // Colonne 'name' nullable
            $table->decimal('prix', 8, 2)->nullable(); // Colonne 'prix' nullable avec 8 chiffres et 2 décimales
            $table->string('image')->nullable(); // Colonne 'image' nullable
            $table->integer('lesson_id')->nullable(); // Colonne 'lessons_id' de type unsignedBigInteger

            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('studymaterials');
    }
};

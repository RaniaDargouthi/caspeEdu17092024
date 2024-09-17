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
        Schema::create('levels', function (Blueprint $table) {
            $table->integer('id'); // Crée une colonne 'id' auto-incrémentée
            $table->string('name')->nullable();
            $table->string('backgroundimage')->nullable();
            $table->decimal('prix', 8, 2)->nullable();
            $table->integer('studymaterial_id')->nullable(); // Définir comme unsignedBigInteger

            // Définir la clé étrangère correctement
            // $table->foreign('studymaterial_id')
            //       ->references('id')
            //       ->on('study_materials')
            //       ->onDelete('cascade');
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
        Schema::dropIfExists('levels');
    }
};

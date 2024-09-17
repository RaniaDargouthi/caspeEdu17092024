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
        Schema::table('studymaterials', function (Blueprint $table) {
      // Assurez-vous que la colonne 'lesson_id' existe
      $table->unsignedBigInteger('lesson_id')->nullable()->change();

      // Ajoutez la clé étrangère
      $table->foreign('lesson_id')->references('id')->on('lesson')
            ->onDelete('set null'); // Optionnel : Ce que vous voulez faire si la leçon est supprimée
  });       
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('studymaterials', function (Blueprint $table) {
            // Supprimez la clé étrangère
            $table->dropForeign(['lesson_id']);
            
            // Revenir à la colonne précédente si nécessaire
            $table->integer('lesson_id')->nullable()->change();
        });
    }
};

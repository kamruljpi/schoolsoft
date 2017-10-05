<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCvLanguageSkillsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cv_language_skills', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('cv_language_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->string('writing')->nullable();
            $table->string('reading')->nullable();
            $table->string('speaking')->nullable();
            $table->string('status')->nullable();
            $table->integer('site_id')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('cv_language_skills');
    }
}

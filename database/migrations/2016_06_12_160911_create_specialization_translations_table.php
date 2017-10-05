<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSpecializationTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('specialization_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('specialization_id')->nullable();
            $table->string('skill_description')->nullable();
            $table->string('extracurricular_activities')->nullable();
            $table->string('locale')->nullable();
            $table->integer('site_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('specialization_translations');
    }
}

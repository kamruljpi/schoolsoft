<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAcademicQualificationTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('academic_qualification_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('academic_qualification_id')->nullable();
            $table->string('degree_title')->nullable();
            $table->string('major')->nullable();
            $table->string('institute_name')->nullable();
            $table->string('result')->nullable();
            $table->string('achievement')->nullable();
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
        Schema::drop('academic_qualification_translations');
    }
}

<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAcademicQualificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('academic_qualifications', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->integer('education_level_id');
            $table->string('year_of_passing')->nullable();
            $table->string('duration')->nullable();
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
        Schema::drop('academic_qualifications');
    }
}

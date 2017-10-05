<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExaminationSchedulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('examination_schedules', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('examination_id')->nullable();
            $table->integer('student_class_id')->nullable();
            $table->integer('section_id')->nullable();
            $table->integer('subject_id')->nullable();
            $table->date('examination_date');
            $table->time('start_time');
            $table->time('end_time');
            $table->integer('building_id')->nullable();
            $table->integer('floor_id')->nullable();
            $table->integer('room_id')->nullable();
            $table->string('status')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('examination_schedules');
    }
}

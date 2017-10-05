<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentAttendancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_attendances', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->nullable();
            $table->string('roll_no')->nullable();
            $table->string('present_type')->nullable();
            $table->integer('present_type_id')->nullable();
            $table->time('in_time')->nullable();
            $table->time('out_time')->nullable();
            $table->date('present_date')->nullable();
            $table->dateTime('present_date_time')->nullable();
            $table->integer('present_year')->nullable();
            $table->integer('present_month')->nullable();
            $table->integer('present_day')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('student_attendances');
    }
}

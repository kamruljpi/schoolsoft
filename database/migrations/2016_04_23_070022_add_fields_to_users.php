<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldsToUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->integer('class_id')->after('religion_id')->nullable();
            $table->integer('section_id')->after('class_id')->nullable();
            $table->string('roll_no')->after('section_id')->nullable();
            $table->string('father_name')->after('roll_no')->nullable();
            $table->string('mother_name')->after('father_name')->nullable();
            $table->string('profession')->after('mother_name')->nullable();
            $table->integer('guardian_id')->after('profession')->nullable();


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('class_id');
            $table->dropColumn('section_id');
            $table->dropColumn('guardian_id');
            $table->dropColumn('father_name');
            $table->dropColumn('mother_name');
            $table->dropColumn('profession');
            $table->dropColumn('roll_no');
        });
    }
}

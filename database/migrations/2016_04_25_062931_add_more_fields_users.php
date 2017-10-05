<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMoreFieldsUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('emergency_contact')->after('phone')->nullable();
            $table->string('nid_number')->after('emergency_contact')->nullable();
            $table->string('passport_no')->after('nid_number')->nullable();
            $table->string('birth_certificate_no')->after('passport_no')->nullable();
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
            $table->dropColumn('emergency_contact');
            $table->dropColumn('nid_number');
            $table->dropColumn('passport_no');
            $table->dropColumn('birth_certificate_no');
        });
    }
}

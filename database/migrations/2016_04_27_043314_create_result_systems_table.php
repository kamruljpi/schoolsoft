<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResultSystemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('result_systems', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('setting_ids')->nullable();
            $table->integer('status_id')->nullable();
        });
        Schema::create('result_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('settings')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('result_settings');
        Schema::drop('result_systems');

    }
}

<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTotalResultSystemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('total_result_systems', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('result_rule');
            $table->string('setting_ids');
            $table->string('status');
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
        Schema::drop('total_result_systems');
    }
}

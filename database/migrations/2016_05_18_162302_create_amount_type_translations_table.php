<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAmountTypeTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('amount_type_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('amount_type_id')->nullable();
            $table->string('amount_type_name')->nullable();
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
        Schema::drop('amount_type_translations');
    }
}

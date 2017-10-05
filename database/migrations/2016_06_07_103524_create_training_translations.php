<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTrainingTranslations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('training_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('training_id')->nullable();
            $table->string('training_title')->nullable();
            $table->text('training_cover')->nullable();
            $table->string('institute_name')->nullable();
            $table->string('location')->nullable();
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
        Schema::drop('training_translations');
    }
}

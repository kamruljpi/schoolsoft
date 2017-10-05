<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmploymentHistoryTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employment_history_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('employment_history_id')->nullable();
            $table->string('company_name')->nullable();
            $table->string('company_location')->nullable();
            $table->string('position_held')->nullable();
            $table->string('department')->nullable();
            $table->string('responsibilites')->nullable();
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
        Schema::drop('employment_history_translations');
    }
}

<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRelationTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('relation_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('relation_id')->nullable();
            $table->string('relation_name')->nullable();
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
        Schema::drop('relation_translations');
    }
}

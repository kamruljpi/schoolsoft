<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReferenceTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reference_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('reference_id')->nullable();
            $table->string('reference_name')->nullable();
            $table->string('organization')->nullable();
            $table->string('designation')->nullable();
            $table->string('address')->nullable();
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
        Schema::drop('reference_translations');
    }
}

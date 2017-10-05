<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAccountTypeTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('account_type_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('account_type_id')->nullable();
            $table->string('account_type_name')->nullable();
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
        Schema::drop('account_type_translations');
    }
}

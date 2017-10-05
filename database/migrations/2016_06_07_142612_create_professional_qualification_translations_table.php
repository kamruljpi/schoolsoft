<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProfessionalQualificationTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('professional_qualification_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('professional_qualification_id')->nullable();
            $table->string('certification')->nullable();
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
        Schema::drop('professional_qualification_translations');
    }
}

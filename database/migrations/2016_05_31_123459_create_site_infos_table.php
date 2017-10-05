<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSiteInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('site_types', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->integer('position')->default(1);
            $table->boolean('status')->default(0);
            $table->softDeletes();
        });
        Schema::create('site_groups', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->integer('position')->default(1);
            $table->boolean('status')->default(0);
            $table->softDeletes();
        });
        Schema::create('site_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('site_type_id')->unsigned();
            $table->integer('site_group_id')->unsigned();
            $table->string('site_alias')->nullable();
            $table->string('site_email')->nullable();
            $table->integer('site_phone')->nullable();
            $table->string('site_logo')->nullable();
            $table->boolean('status')->default(0);
            $table->softDeletes();
        });
        Schema::create('site_info_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('site_info_id')->unsigned();
            $table->string('site_name');
            $table->string('address')->nullable();
            $table->string('locale');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('site_infos');
    }
}

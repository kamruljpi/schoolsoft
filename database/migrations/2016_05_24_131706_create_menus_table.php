<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       Schema::create('menus', function (Blueprint $table) {
            $table->increments('id');
            $table->string('route_name')->nullable();
            $table->integer('parent_id')->default(0);
            $table->integer('position')->default(0);
            $table->boolean('status')->default(0);
            $table->boolean('is_displayable')->default(0);
            $table->integer('site_id')->default(1);
        });
        Schema::create('menu_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('menu_id')->unsigned();
            $table->string('menu_name')->nullable();
            $table->string('locale')->nullable();
            $table->integer('site_id')->default(1);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('menus');
        Schema::drop('menu_translations');
    }
}

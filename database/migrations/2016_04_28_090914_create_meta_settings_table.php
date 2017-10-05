<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMetaSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('meta_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('form_field_name')->nullable();
            $table->string('field_level')->nullable();
            $table->string('field_type')->nullable();
            $table->string('field_options')->nullable();
            $table->string('field_value_type')->nullable();
            $table->string('default_value')->nullable();
            $table->string('labclass')->nullable();
            $table->string('wrapclass')->nullable();
            $table->string('field_style')->nullable();
            $table->string('field_class')->nullable();
            $table->string('field_id')->nullable();
            $table->string('form_name')->nullable();
            $table->string('validation_type')->nullable();
            $table->string('description')->nullable();
            $table->boolean('is_required')->nullable();
            $table->boolean('is_translatable')->nullable();
            $table->boolean('is_deleted')->nullable();
            $table->string('status')->nullable();
            $table->string('position')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('meta_settings');
    }
}

<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSiteMembershipsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('site_memberships', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('payment_type')->nullable();
            $table->string('payment_type_duration')->default('yearly');
            $table->float('payment_amount')->nullable();
            $table->integer('payment_installment')->nullable();
            $table->boolean('late_payment_membership_status')->nullable();
            $table->integer('late_payment_membership_days')->nullable();
            $table->float('late_fee')->nullable();
            $table->boolean('alumni_login')->nullable();
            $table->float('alumni_fee')->nullable();
            $table->string('discount_type')->nullable();
            $table->float('discount')->nullable();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('site_memberships');
    }
}

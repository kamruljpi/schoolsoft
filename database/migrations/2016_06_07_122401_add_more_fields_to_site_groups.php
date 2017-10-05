<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMoreFieldsToSiteGroups extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('site_groups', function (Blueprint $table) {
            $table->string('group_alias')->after('name')->nullable();
            $table->string('group_email')->after('group_alias')->nullable();
            $table->string('group_address')->after('group_email')->nullable();
            $table->string('group_phone')->after('group_address')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('site_groups', function (Blueprint $table) {
            $table->dropColumn('group_alias');
            $table->dropColumn('group_email');
            $table->dropColumn('group_address');
            $table->dropColumn('group_phone');
            $table->dropColumn('deleted_at');
        });
    }
}

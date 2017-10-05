<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSiteId extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $tableNames  = DB::select('SHOW TABLES');
        foreach($tableNames as $tableName){

            if(!Schema::hasColumn($tableName->Tables_in_school,'site_id')){
                Schema::table($tableName->Tables_in_school, function (Blueprint $table) {

                    $table->integer('site_id')->nullable();
                });
            }
        }

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
}

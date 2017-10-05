    <?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

class AddSiteIe1 extends Migration
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

            if(Schema::hasColumn($tableName->Tables_in_school,'site_id')){
               /* Schema::table($tableName->Tables_in_school, function (Blueprint $table) {

                    $table->integer('site_id')->nullable();
                });*/
                DB::table($tableName->Tables_in_school)
                    ->update(['site_id' => 1]);
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
        //
    }
}

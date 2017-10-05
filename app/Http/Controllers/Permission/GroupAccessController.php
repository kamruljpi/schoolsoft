<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 5/26/16
 * Time: 12:07 PM
 */

namespace Erp\Http\Controllers\Permission;


use Erp\Http\Controllers\Controller;

use Erp\Http\Controllers\ProjectController;
use Erp\Models\Permission\GroupAccess;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class GroupAccessController extends ProjectController
{
    private $groupAccess;

    public function __construct(GroupAccess $groupAccess)
    {

        $this->groupAccess = $groupAccess;
    }

    public function assignAccess(Request $request)
    {


        $accessType = $request->access_type;
        $accessRole = $request->access_role_id;
        $accessMenu = $request->access_menu_id;
        $isAccessed = $request->access_checked;
//        $siteid=1;
        $siteid= (int)Session::get(SITE_ID);
        if($isAccessed== "true"){
            $isAccessed = true;
        }elseif($isAccessed == "false"){
            $isAccessed = false;
        }

        $groupAccess = $this->groupAccess;

        $insertedRow = $groupAccess->whereMenuId($accessMenu)->whereRoleId($accessRole)->whereSiteId($siteid)->first();

        if(is_null($insertedRow)){

            $this->groupAccess->create([
                'menu_id'=>$accessMenu,
                'role_id'=>$accessRole,
                $accessType=>$isAccessed
            ]);

        }else{
            $insertedRow->update([
                'menu_id'=>$accessMenu,
                'role_id'=>$accessRole,
                $accessType=>$isAccessed
            ]);
        }
      return response()->json(['success'=>'successfully updated']);
    }

    /*public function access()
    {
        dd('hello');
    }*/

}
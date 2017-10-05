<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 6/26/16
 * Time: 12:47 PM
 */

namespace Erp\Http\Controllers\Settings;


use Erp\Http\Controllers\Controller;
use Erp\Models\Menu\Menu;

class SettingController extends Controller
{

    private $menus;

    public function __construct(Menu $menu)
    {
        $this->menus = $menu;
    }
    public function doSettings()
    {
    	$menus = $this->menus;
    	$viewType = 'All Settings';
    	return view('default.admin.settings.setting',compact('viewType','menus'));
    }
}
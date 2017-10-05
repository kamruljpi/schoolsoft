<?php

namespace Erp\Http\Controllers\Menu;

use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Menu\Menu;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class MenuController extends ProjectController
{
    use Lang,FormControll, DataHelper;


    private $menu;

    public function __construct(Menu $menu)
    {
        $this->middleware('auth');
        $this->menu =  $menu;
    }
    public function index()
    {

        $model = $this->menu;
//        $usersList = $list->tbodyValues($this->user);
//        $dataArr = $list->dataArr;
        /*for datatable*/
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $menus = $this->menu->paginate(20);
        $viewType = 'Menu List';

        return view('default.admin.menus.index',compact('menus','locale','defaultLocale','viewType','model'));
    }

    public function createMenuForm()
    {
        $viewType = 'Create Menu';

        return view('default.admin.menus.create',compact('viewType'));
    }

    public function createMenu(Requests\Validator $validatedRequest)
    {
        foreach ($this->menu->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->menu->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->menu->icon_name = $validatedRequest->get('icon_name');
        $this->menu->route_name = $validatedRequest->get('route_name');
        $this->menu->parent_id = $validatedRequest->get('parent_id');
        $this->menu->is_displayable = $validatedRequest->get('is_displayable');
        $this->menu->status = $validatedRequest->get('status');
        $this->menu->is_common_access = $validatedRequest->get('is_common_access');

        $this->menu->save();
        return back()->withSuccess('Successfully Created');
    }

    public function editMenuForm($id)
    {
        $viewType = 'Edit Menu';

        $menuToEdit =$this->editFormModel($this->menu->findOrFail($id)) ;

        return view('default.admin.menus.edit',compact('menuToEdit','viewType'));

    }


    public function editMenu($id, Requests\Validator $validatedRequest)
    {
        $menuToEdit = $this->menu->findOrFail($id);

        foreach ($menuToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $menuToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $menuToEdit->icon_name = $validatedRequest->get('icon_name');
        $menuToEdit->route_name = $validatedRequest->get('route_name');
        $menuToEdit->parent_id = $validatedRequest->get('parent_id');
        $menuToEdit->is_displayable = $validatedRequest->get('is_displayable');
        $menuToEdit->status = $validatedRequest->get('status');
        $menuToEdit->is_common_access = $validatedRequest->get('is_common_access');

        return $menuToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }
    public function deleteMenu($id)
    {

        $menuToDelete = $this->menu->findOrFail($id);

        if($menuToDelete->delete()){

            return back()->withSuccess('Successfully Deleted');
        }
    }

    public function searchMenu(Request $request)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $menuName = $request->menuName;
//        dd($menuName);
        $menus = \DB::table('menus')
            ->join('menu_translations', 'menus.id', '=', 'menu_translations.menu_id')
            ->select('menus.*', 'menu_translations.menu_name')
            ->where('menu_translations.menu_name',  'LIKE',  '%' . $menuName . '%')
            ->get();
//        $menus = $this->menu->where('menu_name', 'LIKE',  '%' . $menuName . '%')->get();
//        dd($menus);

        return view('default.admin.menus.menu_search',compact('menus','locale','defaultLocale'));
    }
}

<?php

namespace Erp\Http\Controllers\Admin;

use Erp\Forms\AdminForm;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Email\Email;
use Erp\Models\Password\Password;
use Erp\Models\Role\Role;
use Erp\Models\Menu\Menu;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Erp\Models\User\User;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Illuminate\Foundation\Application;
use Erp\Http\Requests\Validator;


class AdminController extends ProjectController
{

    use Lang,FormControll;

    private $user;


    public function __construct(User $user)
    {
//        $this->middleware('login');

        $this->middleware('auth');

        $this->user = $user;

    }


    public function index(Role $role)
    {
        $roleAdmin = $role->whereName(ucwords('superadmin'))->firstOrFail();

        $model = $roleAdmin->users;
//        dd($model);
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
//        $users = $this->user->all();
        $viewType = 'Admin List';

        return view('default.admin.admins.index',compact('locale','defaultLocale','viewType','model'));

    }

    public function createAdminForm(AdminForm $adminForm)
    {
        $viewType = 'Create Admin';
        $createAdmin = $adminForm;
        return view('default.admin.admins.create',compact('viewType'/*,'createAdmin'*/));
    }

    /**
     * @param Email $email
     * @param Password $password
     * @param Validator $validatedRequest
     * @param Role $role
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createAdmin(Email $email, Password $password, Validator $validatedRequest, Role $role)
    {
        $this->user->username = $validatedRequest->get('username');
        $this->user->gender_id = $validatedRequest->get('gender_id');
        $this->user->religion_id = $validatedRequest->get('religion_id');
//        $this->user->company_id = $validatedRequest->get('company_id');
        $this->user->department_id = $validatedRequest->get('department_id');
        $this->user->phone = $validatedRequest->get('phone');
        $this->user->password = bcrypt($validatedRequest->get('password'));
        $this->user->email = $validatedRequest->get('email');

        if( $this->user->save()){
            foreach ($this->user->translatedAttributes as $field) {
                foreach($this->locales() as $locale => $value){
                    if($validatedRequest->get($field.'_'.$locale)){
                        $this->user->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                    }
                }
            }

            if($this->user->save()){
                $lastUser = $this->user->all()->last();
                $email->email = $validatedRequest->get('email');
                $password->password = $this->user->password;/*$validatedRequest->get('password');*/
                $password->user_id = $lastUser->id;
                $roleId = $validatedRequest->role;
                $lastUser->roles()->attach($roleId);
                $lastUser->emails()->save($email);
                $lastUser->passwords()->save($password);
            }
        }

        return back();
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function accessAdmin(Menu $menu)
    {

        $this->menus = $menu;
        $menus = $this->menus;
        $viewType = 'All Settings';
        return view('default.admin.admins.index',compact('viewType','menus'));
    }

    /**
     * @param $id
     */
    public function viewAdmin($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $adminProfile = $this->user->findOrFail($id);

        return view('default.admin.admins.view',compact('adminProfile','locale','defaultLocale'));

    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editAdminForm($id,AdminForm $adminForm)
    {

        $viewType = 'Edit Admin';
        $editAdmin = $adminForm;
        $adminProfile =$this->editFormModel($this->user->findOrFail($id)) ;
//        dd($adminProfile);
        return view('default.admin.admins.edit',compact('adminProfile','viewType','editAdmin'));
    }

    public function editAdmin($id, Validator $validatedRequest,Email $email,Password $password)
    {
        $adminProfile = $this->user->findOrFail($id);

        $adminProfile->username = $validatedRequest->get('username');
        $adminProfile->gender_id = $validatedRequest->get('gender_id');
        $adminProfile->religion_id = $validatedRequest->get('religion_id');
        $adminProfile->department_id = $validatedRequest->get('department_id');
        $adminProfile->phone = $validatedRequest->get('phone');
        $adminProfile->password = bcrypt($validatedRequest->get('password'));
        $adminProfile->email = $validatedRequest->get('email');



        if( $adminProfile->save()){
            foreach ($adminProfile->translatedAttributes as $field) {
                foreach($this->locales() as $locale => $value){
                    if($validatedRequest->get($field.'_'.$locale)){
                        $adminProfile->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                    }
                }
            }
            if($adminProfile->save()){
                $email->email = $validatedRequest->get('email');
                $password->password = $adminProfile->password;
                $password->user_id = $adminProfile->id;
                $adminProfile->emails()->save($email);
                $adminProfile->passwords()->save($password);
            }
        }

        return back();
    }

    /**
     * @param $id
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deleteAdmin($id)
    {
        $adminToDelete = $this->user->findOrFail($id);
        if($adminToDelete->delete()):
            return back();
        endif;
        return back()->withErrors('Not Successfully Deleted');

    }

}

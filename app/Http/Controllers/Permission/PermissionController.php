<?php

namespace Erp\Http\Controllers\Permission;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Permission\Permission;
use Erp\Models\Role\Role;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class PermissionController extends ProjectController
{
    use Lang, FormControll;

    private $request;
    private $permission;

    /**
     * PermissionController constructor
     * @param Permission $permission
     * @param Request $request
     */
    public function __construct(Permission $permission, Request $request)
    {

        $this->middleware('auth');

        $this->request = $request;
        $this->permission = $permission;
    }


    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $model = $this->permission->paginate(5);
        //dd($model);
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $viewType = 'Permission List';

        return view('default.admin.permission.index',compact('locale','defaultLocale','viewType','model'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createForm()
    {
        $viewType = 'Create Permission';

        return view('default.admin.permission.create',compact('viewType'));

    }

    /**
     * @param Permission $permission
     * @param Validator $validatedRequest
     */
    public function createPermission( Requests\Validator $validatedRequest)
    {
        $isCreated = $this->permission->create([
            'name'=>ucwords($validatedRequest->get('name')),
            'label'=>$validatedRequest->get('label'),
            'status'=>$validatedRequest->get('status')
        ]);


        return $isCreated?back():null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editPermissionForm($id)
    {
        $viewType = 'Edit Permission';

        $permissionToedit = $this->editFormModel($this->permission->findOrFail($id)) ;

        return view('default.admin.permission.edit',compact('permissionToedit','viewType'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function editPermission($id,Requests\Validator $validatedRequest)
    {
        $permissionToedit = $this->permission->findOrFail($id);
        $isEdited =  $permissionToedit->update([
            'name'=>ucwords($validatedRequest->get('name')),
            'label'=>$validatedRequest->get('label'),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewPermission($id)
    {
        $permissionToView = $this->permission->findOrFail($id);

        return view('default.admin.permission.view',compact('permissionToView'));

    }

    /**
     * @param $id
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deletePermission($id)
    {
        $permissionToDelete = $this->permission->findOrFail($id);

        if($permissionToDelete->delete()):
            return back();
        endif;

        return back()->withErrors('Not successfully deleted');
    }

    /**
     * @return $this
     */
    public function permissionAssignForm()
    {
        $viewType = 'Assign Permission';

        return view('default.admin.permission.assign_permission',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @param User $user
     * @return \Illuminate\Http\RedirectResponse
     */
    public function assignPermission(Requests\Validator $validatedRequest, Role $role)
    {
        $assignedRole = $role->findOrFail($validatedRequest->role_id);
        $assignedPermission = $this->permission->findOrFail($validatedRequest->permission_id);

        foreach($assignedRole->permissions()->get() as $permission):
            if($permission->id == $assignedPermission->id):
                return back()->withErrors("The $assignedRole->name already holds the $assignedPermission->name permission");
            endif;
        endforeach;

            $assignedRole->permissions()->attach($validatedRequest->permission_id);

        return back();
    }




}

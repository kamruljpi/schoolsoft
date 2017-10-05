<?php

namespace Erp\Http\Controllers\Designation;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Department\Department;
use Erp\Models\Designation\Designation;
use Erp\Models\User\User;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class DesignationController extends ProjectController
{
    use FormControll;

    private $designation;

    /**
     * DesignationController constructor.
     * @param Designation $designation
     */
    public function __construct(Designation $designation)
    {

        $this->middleware('auth');

        $this->designation = $designation;
    }

    public function index()
    {
        $model = $this->designation->with('department')->paginate(5);
        //dd($model);
        $viewType = 'Designation List';

        return view('default.admin.designation.index',compact('viewType','model'));

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createDesignationForm()
    {
        $viewType = 'Create Designation';
        return view('default.admin.designation.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createDesignation(Requests\Validator $validatedRequest, Department $department)
    {
//        $designationToCheck = $this->designation->whereName($validatedRequest->get('name'));
        $departmentToCheck = $department->findOrFail($validatedRequest->department_id);
        foreach($departmentToCheck->designations as $designation ):
            if($designation->name == $validatedRequest->name):
                return back()->withErrors("$departmentToCheck->name department already holds the $validatedRequest->name designation");
            endif;

        endforeach;

        return $this->designation->create([
            'name'=>ucwords($validatedRequest->get('name')),
            'department_id'=>$validatedRequest->get('department_id'),
            'status'=>ucwords($validatedRequest->get('status'))
        ])? back(): null;

    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editDesignationForm($id)
    {
        $viewType = 'Edit Designation';

        $designationToEdit =$this->editFormModel($this->designation->findOrFail($id)) ;

        return view('default.admin.designation.edit',compact('designationToEdit','viewType'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function editDesignation($id, Requests\Validator $validatedRequest)
    {
        $designationToEdit = $this->designation->findOrFail($id);

        $isEdited =  $designationToEdit->update([
            'name'=>ucwords($validatedRequest->get('name')),
            'department_id'=>$validatedRequest->get('department_id'),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewDesignation($id)
    {
        $designationToView = $this->designation->findOrFail($id);

        return view('default.admin.designation.view',compact('designationToView'));
    }

    /**
     * @param $id
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deleteDesignation($id)
    {
        $designationToDelete = $this->designation->findOrFail($id);

        if($designationToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');

    }

    /**
     * @param $deptId
     * @param Department $department
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function designationOfDept($deptId, Department $department, Request $request)
    {
        $selectedDepertment = $department->findOrFail($deptId);
        $designationForDept = $selectedDepertment->designations;
        $shiftForDetp = $selectedDepertment->shifts;
        $defalutLangShift = [];
        if(!$shiftForDetp->isEmpty()){
           foreach($shiftForDetp as $key=>$item){
               if(!is_null($item)){
                   $defalutLangShift[$item->id] = $item->translate('en')->name;
               }
           }
        }

        if( $request->ajax()){
            return response()->json( [$designationForDept,$defalutLangShift]);
        }
    }

    public function designationToEdit($userId, User $user, Request $request)
    {
        $userToEdit = $user->findOrFail($userId);
        $designationToEdit = $this->designation->findOrFail($userToEdit->designation_id);

        if( $request->ajax()){
            return response()->json( $designationToEdit);
        }

    }

}

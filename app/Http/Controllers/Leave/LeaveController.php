<?php

namespace Erp\Http\Controllers\Leave;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Leave\Leave;
use Erp\Models\Leave\LeaveApplication;
use Illuminate\Http\Request;
use Erp\Http\Requests\Validator;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class LeaveController extends ProjectController
{

    use Lang,FormControll;

    private $leaves;

    /**
     * LeaveController constructor.
     * @param Leave $leave
     */
    public function __construct(Leave $leave)
    {

        $this->middleware('auth');
//        $this->middleware('role:superadmin',['except'=>['createApplicationForm','applyForLeave','myLeave']]);
        $this->leaves = $leave;

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $model = $this->leaves->paginate(5);
        //dd($model);
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $viewType = 'Leave List';

        return view('default.admin.leaves.index',compact('locale','defaultLocale','viewType','model'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createLeaveForm()
    {
        $viewType = 'Create Leave';

        return view('default.admin.leaves.create',compact('viewType'));

    }

    /**
     * @param Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createLeave(Validator $validatedRequest)
    {
        $isCreated =  $this->leaves->create([
            'type'=>ucwords($validatedRequest->type),
            'leave_details'=>nl2br($validatedRequest->leave_details),
            'max_days'=>$validatedRequest->max_days,
            'status'=>ucwords($validatedRequest->status),
            'position'=>$validatedRequest->position
        ]);

        return $isCreated?back():null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editLeaveForm($id)
    {

        $viewType = 'Edit Leave';

        $leaveToEdit =$this->editFormModel($this->leaves->findOrFail($id)) ;

        return view('default.admin.leaves.edit',compact('leaveToEdit','viewType'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function editLeave($id, Validator $validatedRequest)
    {
        $leaveToEdit = $this->leaves->findOrFail($id);

        $isEdited =  $leaveToEdit->update([
            'name'=>ucwords($validatedRequest->get('name')),
            'leave_details'=>nl2br($validatedRequest->leave_details),
            'max_days'=>$validatedRequest->max_days,
            'status'=>ucwords($validatedRequest->get('status')),
            'position'=>$validatedRequest->get('position')
        ]);

        return $isEdited?back():null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewLeave($id)
    {
        $leaveToView = $this->leaves->findOrFail($id);

        return view('default.admin.leaves.view',compact('leaveToView'));
    }

    /**
     * @param $id
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deleteLeave($id)
    {
        $leaveToDelete = $this->leaves->findOrFail($id);

        if($leaveToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createApplicationForm()
    {
        $viewType = 'Apply for Leave';
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        return view('default.employee.leaves.application-form',compact('viewType','locale','defaultLocale'));

    }

    /**
     * @param LeaveApplication $leaveApplication
     * @param Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function applyForLeave(LeaveApplication $leaveApplication ,Validator $validatedRequest)
    {
        $leaveApplication->user_id = request()->user()->id;
        $leaveApplication->leave_id = $validatedRequest->leave_id;
        $leaveApplication->from = $validatedRequest->from;
        $leaveApplication->to = $validatedRequest->to;
        $leaveApplication->applied_on = $validatedRequest->applied_on;


        if($leaveApplication->save()):
            foreach ($leaveApplication->translatedAttributes as $field) :
                foreach($this->locales() as $locale => $value):
                    if($validatedRequest->get($field.'_'.$locale)):
                        $leaveApplication->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                    endif;
                endforeach;
            endforeach;
        endif;

        if($leaveApplication->save()):
            return back();
        endif;



    }

    /**
     * @param LeaveApplication $leaveApplication
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function leaveApplicationList(LeaveApplication $leaveApplication)
    {
        $model = $leaveApplication;

        /*for datatable*/
        $applications = $leaveApplication->all();
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        /*for datatable*/
//        dd($applications);
        $viewType = 'Leave Application List';
//        dd($applications);

        return view('default.admin.leaves.application-list',compact('viewType','model','applications','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @param LeaveApplication $leaveApplication
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function applicationEditForm($id, LeaveApplication $leaveApplication)
    {
        $viewType = 'Change the Status of Application';

        $applicationToEdit =$this->editFormModel($leaveApplication->findOrFail($id)) ;

        return view('default.admin.leaves.application-edit',compact('applicationToEdit','viewType'));
    }

    /**
     * @param $id
     * @param LeaveApplication $leaveApplication
     * @param Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function editAplication($id,LeaveApplication $leaveApplication, Validator $validatedRequest)
    {
        $applicationToEdit = $leaveApplication->findOrFail($id);

        $isEdited =  $applicationToEdit->update([
           /* 'from'=>$validatedRequest->from,
            'to'=>$validatedRequest->to,
            'applied_on'=>$validatedRequest->applied_on,*/
            'status_id'=>ucwords($validatedRequest->get('status_id')),

        ]);

        return $isEdited?back():null;
    }

    /**
     * @param $id
     * @param LeaveApplication $leaveApplication
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function deleteApplication($id, LeaveApplication $leaveApplication)
    {
        $applicationToDelete = $leaveApplication->findOrFail($id);

        if($applicationToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }

    /**
     * @param LeaveApplication $leaveApplication
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function myLeave(LeaveApplication $leaveApplication)
    {
        $myId = request()->user();
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $myApplications = $myId->leaveApplications;

        return view('default.employee.leaves.my-application-list',compact('myApplications','locale','defaultLocale'));

    }

}

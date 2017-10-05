<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 8/30/2016
 * Time: 12:04 PM
 */
namespace Erp\Http\Controllers\SubjectGroup;

use Erp\Forms\SubjectGroupForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests\Validator;
use Erp\Models\SubjectGroup\SubjectGroup;
use Erp\Models\Subject\Subject;
use Erp\Models\Student\StudentClass;
use Erp\Models\User\User;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;
//use DB;

class SubjectGroupController extends ProjectController
{
    use FormControll, DataHelper;

    private $subjectGroup;

    /**
     * @param SubjectGroup $subjectGroup
     */
    public function __construct(SubjectGroup $subjectGroup)
    {
        $this->middleware('auth');

        $this->subjectGroup = $subjectGroup;
    }

    /**
     * @param SubjectGroup $subjectGroup
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(SubjectGroup $subjectGroup)
    {
        $subjectGroupList = $subjectGroup->with('classOfSubjectGroup')->paginate(20);
//        dd($subjectGroupList);

        $viewType = 'Subject Group List';

        return view('default.admin.subject-group.index',compact('viewType', 'subjectGroupList'));
    }

    public function createSubjectGroupForm()
    {
        $viewType = 'Create Subject Group';

        return view('default.admin.subject-group.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     */
    public function createSubjectGroup(Requests\Validator $validatedRequest)
    {
//        dd($validatedRequest);
//        dd($validatedRequest->subject_ids);
        $current_date_time = Carbon::now();

        $subjectIds = $validatedRequest->subject_ids;
        if(isset($subjectIds) && !empty($subjectIds)){
            $subjectIds = implode(",", $subjectIds);
        }
//        dd($subjectIds);

        $this->subjectGroup->subject_group_name = $validatedRequest->get('subject_group_name');
        $this->subjectGroup->student_class_id = $validatedRequest->get('student_class_id');
        $this->subjectGroup->subject_ids = $subjectIds;
        $this->subjectGroup->status = $validatedRequest->get('status');
        $this->subjectGroup->created_at = $current_date_time;

        return $this->subjectGroup->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param $id
     * @param SubjectGroupForm $subjectGroupForm
     */
    public function getSubjectGroupEditForm($id, SubjectGroupForm $subjectGroupForm)
    {
        $viewType = 'Edit Subject Group';
        $editSubjectGroup = $subjectGroupForm;
        $subjectGroupData = $this->editFormModel($this->subjectGroup->findOrFail($id));
//        dd($subjectGroupData);

        return view('default.admin.subject-group.edit', compact('viewType', 'editSubjectGroup', 'subjectGroupData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return null
     */
    public function editSubjectGroup($id, Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $subjectIds = $validatedRequest->subject_ids;
        if(isset($subjectIds) && !empty($subjectIds)){
            $subjectIds = implode(",", $subjectIds);
        }
        $subjectGroupToEdit = $this->subjectGroup->findOrFail($id);

        $subjectGroupToEdit->subject_group_name = $validatedRequest->get('subject_group_name');
        $subjectGroupToEdit->student_class_id = $validatedRequest->get('student_class_id');
        $subjectGroupToEdit->subject_ids = $subjectIds;
        $subjectGroupToEdit->status = $validatedRequest->get('status');
        $subjectGroupToEdit->updated_at = $current_date_time;

        return $subjectGroupToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewSubjectGroup($id)
    {
        $subjectGroup = $this->subjectGroup->with('classOfSubjectGroup')->findOrFail($id);

        return view('default.admin.subject-group.view',compact('subjectGroup'));
    }

    /**
     * @param $id
     */
    public function deleteSubjectGroup($id)
    {
        $subjectGroupToDelete = $this->subjectGroup->findOrFail($id);

        if($subjectGroupToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }

    /**
     * @param Subject $subject
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getSubjectTableByClass(Subject $subject, Request $request)
    {
        $classId = $request->ClassId;
        $subjectList = $subject->whereStudentClassId($classId)->get();
        if(request()->ajax()){
            return view('default.admin.subject-group.subject-table',compact('subjectList'));
        }

    }

    public function getSubjectTableByClassAndSubjectGroup(Subject $subject, SubjectGroup $subjectGroup, Request $request)
    {
        $classId = $request->ClassId;
        $subjectIdArray = [];
        $subjectGroupId = $request->SubjectGroupId;
        $subjectList = $subject->whereStudentClassId($classId)->get();
        $subjectGroupData = $subjectGroup->where('student_class_id', '=', $classId)
                                         ->where('id', '=', $subjectGroupId)
                                         ->get();

        if(isset($subjectGroupData) && !empty($subjectGroupData)){
            foreach($subjectGroupData as $subjectGroup){
                $subjectIds = $subjectGroup->subject_ids;
            }
        }
        if(empty($subjectIds)){
            $subjectIds = 0;
        }
//        dd($subjectIds);

        $subjectIdArray = @explode(",",$subjectIds);
        if(request()->ajax()){
            return view('default.admin.subject-group.subject-table-edit',compact('subjectList','subjectIdArray'));
        }
    }
}
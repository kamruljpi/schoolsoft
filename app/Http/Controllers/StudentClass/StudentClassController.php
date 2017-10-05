<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/27/2016
 * Time: 4:04 PM
 */

namespace Erp\Http\Controllers\StudentClass;

use Erp\Forms\StudentClassForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Student\Student;
use Erp\Models\Student\StudentClass;
use Erp\Models\SubjectGroup\SubjectGroup;
use Erp\Models\Student\Section;
use Erp\Models\Status\Status;
use Erp\Http\Requests\Validator;
use Erp\Models\User\User;
use Illuminate\Http\Request;
use Erp\Http\Requests;


class StudentClassController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $studentClass;

    public function __construct(StudentClass $studentClass)
    {

        $this->middleware('auth');

        $this->studentClass = $studentClass;
    }

    public function index(StudentClass $studentClass)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $classList = $studentClass->with('classTeacher', 'totalResultSystem')->paginate(20);
        //dd($classList);
//        foreach($classList as $cl){
//            dd($cl->classTeacher()->get());
//        }

        $viewType = 'Class List';

        return view('default.admin.class.index',compact('viewType', 'classList', 'locale', 'defaultLocale'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createClassForm()
    {

        $viewType = 'Create Class';

        return view('default.admin.class.create-class',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createClass(Validator $validatedRequest)
    {
        $allClasses = $this->studentClass;
        $isOwnFieldsSaved = $this->ownFieldsToSave($allClasses, $validatedRequest);

        if($isOwnFieldsSaved ){
            return back()->withSuccess('Successfully Created');
        }
    }

    /**
     * @param StudentClass $studentClass
     * @param Validator $validatedRequest
     * @return bool
     */
    public function ownFieldsToSave(StudentClass $studentClass, Validator $validatedRequest)
    {
        if(isset($studentClass->ownFields)){
            foreach($studentClass->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $studentClass->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }
        if($studentClass->save()){
            return true;
        }
        return false;
    }

    /**
     * @param $id
     * @param StudentClassForm $studentClassForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function editClassForm($id, StudentClassForm $studentClassForm)
    {
        $viewType = 'Edit Class';
        $editClass = $studentClassForm;
        $classData =$this->editFormModel($this->studentClass->findOrFail($id)) ;

        return view('default.admin.class.edit',compact('classData','viewType','editClass'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function editClass($id, Validator $validatedRequest)
    {
        $classData = $this->studentClass->findOrFail($id);
        $isOwnFieldsSaved = $this->ownFieldsToSave($classData, $validatedRequest);

        if($isOwnFieldsSaved ){
            return back()->withSuccess('Successfully Created');
        }
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteClass($id)
    {
        $classToDelete = $this->studentClass->findOrFail($id);

        if($classToDelete->delete()){

            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }

    public function sectionOfClass($classId, StudentClass $studentClass, Request $request)
    {
        $selectedClass = $studentClass->findOrFail($classId);
        //dd($selectedClass);
        $sectionForClass = $selectedClass->sections;
        $subjectForClass = $selectedClass->subjects;
        $subjectGroupForClass = $selectedClass->subjectGroups;
//        dd($subjectGroupForClass);
        if( $request->ajax()){
            return response()->json( [$sectionForClass, $subjectForClass, $subjectGroupForClass]);
        }
    }

}
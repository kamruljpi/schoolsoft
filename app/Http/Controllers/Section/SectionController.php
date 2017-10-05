<?php

namespace Erp\Http\Controllers\Section;

use Erp\Forms\SectionForm;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Student\Section;
use Erp\Models\Student\StudentClass;
use Erp\Models\Subject\Subject;
use Illuminate\Http\Request;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Requests\Validator;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class SectionController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $section;

    /**
     * RolesController constructor.
     * @param Request $request
     * @param Role $role
     */
    public function __construct( Section $section)
    {

        $this->middleware('auth');


        $this->section = $section;
    }

    public function index(Section $section)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $sectionList = $section->with('studentClass', 'classTeacher')->paginate(20);
        //dd($sectionList);

        $viewType = 'Section List';

        return view('default.admin.section.index',compact('viewType', 'sectionList', 'locale', 'defaultLocale'));
    }

    public function getSectionByClass($classId, Subject $subject)
    {
        $sectionOfClass = $this->section->whereStudentClassId($classId)->get();
        $subjectOfClass = $subject->whereStudentClassId($classId)->get();

        return json_encode([$sectionOfClass,$subjectOfClass]);
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSectionForm()
    {
        $viewType = 'Create Section';

        return view('default.admin.section.create',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return mixed
     */
    public function createSection(Requests\Validator $validatedRequest)
    {
        $isCreated =  $this->section->create([
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'section_name'=>ucwords($validatedRequest->get('section_name')),
            'merit_level'=>ucwords($validatedRequest->get('merit_level')),
            'status'=>ucwords($validatedRequest->get('status'))
        ]);

        return back()->withSuccess('Successfully Created');
    }

    public function getSectionEditForm($id, SectionForm $sectionForm)
    {
        $viewType = 'Edit Section';
        $editSection = $sectionForm;
        $sectionData =$this->editFormModel($this->section->findOrFail($id)) ;
        //dd($sectionData);
        return view('default.admin.section.edit',compact('sectionData','viewType','editSection'));
    }

    public function editSection($id, Validator $validatedRequest)
    {
        $sectionToEdit = $this->section->findOrFail($id);

        $isEdited =  $sectionToEdit->update([
            'section_name'=>ucwords($validatedRequest->get('section_name')),
            'merit_level'=>ucwords($validatedRequest->get('merit_level')),
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'status'=>ucwords($validatedRequest->get('status'))
        ]);

        return $isEdited?back()->withSuccess('Successfully updated'):null;
    }

    public function deleteSection($id)
    {
        $sectionToDelete = $this->section->findOrFail($id);

        if($sectionToDelete->delete()){

            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }
}

<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/30/2016
 * Time: 4:10 PM
 */

namespace Erp\Http\Controllers\Subject;

use Erp\Forms\SubjectForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests\Validator;
use Erp\Models\Subject\Subject;
use Erp\Models\Student\StudentClass;
use Erp\Models\User\User;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class SubjectController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $subject;

    /**
     * @param Subject $subject
     */
    public function __construct(Subject $subject)
    {

        $this->middleware('auth');

        $this->subject = $subject;
    }

    /**
     * @param Subject $subject
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Subject $subject)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $subjectList = $subject->with('studentClass', 'classTeacher')->paginate(20);
        //dd($subjectList);

        $viewType = 'Subject List';

        return view('default.admin.subject.index',compact('viewType', 'subjectList', 'locale', 'defaultLocale'));

    }


    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSubjectForm()
    {
        $viewType = 'Create Subject';

        return view('default.admin.subject.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createSubject(Validator $validatedRequest)
    {
        $subjectMarksTypes = $validatedRequest->subject_marks_type;
        $totalMarks = $validatedRequest->max_marks;
        $passMarks = $validatedRequest->pass_no;

        $marksTypeInfo = [];
//dd($subjectMarksTypes);
        $subject_marks_type = null;

        if(isset($subjectMarksTypes) && !empty($subjectMarksTypes)){

            foreach ($subjectMarksTypes as $marksTypekey=>$marksTypeValue) {

                if(isset($totalMarks)  && !empty($totalMarks) && array_key_exists($marksTypekey,$totalMarks)
                    && isset($passMarks)  && !empty($passMarks) && array_key_exists($marksTypekey,$passMarks)){

                    $marksTypeInfo[$marksTypeValue] = ['markTypeMax'=>$totalMarks[$marksTypekey],'markTypePass'=>$passMarks[$marksTypekey]];
                }

            }
        }
//        dd($marksTypeInfo);

        if(isset($validatedRequest->subject_marks_type) && !empty($validatedRequest->subject_marks_type)){

            foreach ($validatedRequest->subject_marks_type as $sbjct_mrks_tp)
            {
                $subject_marks_type[] = $sbjct_mrks_tp;
            }
        }

        if(isset($subject_marks_type) && !empty($subject_marks_type)){
            $subject_marks_type = implode($subject_marks_type,",");
        }
//        dd(json_encode($marksTypeInfo));
        $isCreated =  $this->subject->create([
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'subject_name'=>ucwords($validatedRequest->get('subject_name')),
            'subject_total_marks'=>$validatedRequest->get('subject_total_marks'),
            'subject_marks_type'=>$subject_marks_type,
            'result_system_id'=>$validatedRequest->get('result_system_id'),
            'subject_author'=>ucwords($validatedRequest->get('subject_author')),
            'subject_code'=>$validatedRequest->get('subject_code'),
            'subject_credit'=>$validatedRequest->get('subject_credit'),
            'result_system_id'=>$validatedRequest->get('result_system_id'),
            'marks_type_info'=>json_encode($marksTypeInfo),
            'status'=>$validatedRequest->get('status')
        ]);
        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewSubject($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $subject = $this->subject->with('studentClass', 'classTeacher', 'resultSystem')->findOrFail($id);
//        dd($subject);

        return view('default.admin.subject.view',compact('subject', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param SubjectForm $subjectForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getSubjectEditForm($id, SubjectForm $subjectForm)
    {
        $viewType = 'Edit Subject';
        $editSubject = $subjectForm;
        $subjectData = $this->editFormModel($this->subject->findOrFail($id));
//        dd($subjectData);

        return view('default.admin.subject.edit', compact('viewType', 'editSubject', 'subjectData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return null
     */
    public function editSubject($id, Validator $validatedRequest)
    {

        $subjectToEdit = $this->subject->findOrFail($id);
        $subjectMarksTypes = $validatedRequest->subject_marks_type;
        $totalMarks = $validatedRequest->max_marks;
        $passMarks = $validatedRequest->pass_no;

        $marksTypeInfo = [];
//dd($subjectMarksTypes);
        $subject_marks_type = null;

        if(isset($subjectMarksTypes) && !empty($subjectMarksTypes)){

            foreach ($subjectMarksTypes as $marksTypekey=>$marksTypeValue) {

                if(isset($totalMarks)  && !empty($totalMarks) && array_key_exists($marksTypekey,$totalMarks)
                    && isset($passMarks)  && !empty($passMarks) && array_key_exists($marksTypekey,$passMarks)){

                    $marksTypeInfo[$marksTypeValue] = ['markTypeMax'=>$totalMarks[$marksTypekey],'markTypePass'=>$passMarks[$marksTypekey]];
                }

            }
        }
//        dd($marksTypeInfo);

        if(isset($validatedRequest->subject_marks_type) && !empty($validatedRequest->subject_marks_type)){

            foreach ($validatedRequest->subject_marks_type as $sbjct_mrks_tp)
            {
                $subject_marks_type[] = $sbjct_mrks_tp;
            }
        }

        if(isset($subject_marks_type) && !empty($subject_marks_type)){
            $subject_marks_type = implode($subject_marks_type,",");
        }
//        dd(json_encode($marksTypeInfo));
        $isUpdated =  $subjectToEdit->update([
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'subject_name'=>ucwords($validatedRequest->get('subject_name')),
            'subject_total_marks'=>$validatedRequest->get('subject_total_marks'),
            'subject_marks_type'=>$subject_marks_type,
            'subject_author'=>ucwords($validatedRequest->get('subject_author')),
            'subject_code'=>$validatedRequest->get('subject_code'),
            'subject_credit'=>$validatedRequest->get('subject_credit'),
            'result_system_id'=>$validatedRequest->get('result_system_id'),
            'marks_type_info'=>json_encode($marksTypeInfo),
            'status'=>$validatedRequest->get('status')
        ]);
        return back()->withSuccess('Successfully Updated');
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteSubject($id)
    {
        $subjectToDelete = $this->subject->findOrFail($id);

        if($subjectToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }
}
<?php

/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 5/4/2016
 * Time: 2:43 PM
 */
namespace Erp\Http\Controllers\Examination;

use Erp\Forms\ExaminationForm;
use Erp\Forms\ExaminationScheduleForm;
use Erp\Forms\ExaminationScheduleFormForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests\Validator;
use Erp\Http\Requests;
use Erp\Models\Examinations\Examination;
use Erp\Models\Examinations\ExaminationSchedule;

class ExaminationController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    public function __construct()
    {

        $this->middleware('auth');

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createExaminationForm()
    {
        $viewType = 'Create Examination';

        return view('default.admin.examinations.create-examination',compact('viewType'));
    }

    /**
     * @param Examination $examination
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createExamination(Examination $examination, Requests\Validator $validatedRequest)
    {
        $isCreated =  $examination->create([
            'examination_name'=>ucwords($validatedRequest->get('examination_name')),
            'examination_date'=>$validatedRequest->get('examination_date'),
            'examination_note'=>ucwords($validatedRequest->get('examination_note')),
            'status'=>$validatedRequest->get('status')
        ]);

        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param Examination $examination
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Examination $examination)
    {
        $examinationList = $examination->paginate(20);
        //dd($examinationList);

        $viewType = 'Examination List';

        return view('default.admin.examinations.index',compact('viewType', 'examinationList'));
    }

    /**
     * @param $id
     * @param Examination $examination
     * @param ExaminationForm $examinationForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getExaminationEditForm($id,Examination $examination, ExaminationForm $examinationForm)
    {
        $viewType = 'Edit Examination';
        $editExamination = $examinationForm;
        $examinationData = $this->editFormModel($examination->findOrFail($id));

        return view('default.admin.examinations.edit', compact('viewType', 'editExamination', 'examinationData'));
    }

    /**
     * @param $id
     * @param Examination $examination
     * @param Validator $validatedRequest
     * @return null
     */
    public function editExamination($id, Examination $examination, Validator $validatedRequest)
    {
        $examinationToEdit = $examination->findOrFail($id);

        $isEdited = $examinationToEdit->update([
            'examination_name'=>ucwords($validatedRequest->get('examination_name')),
            'examination_date'=>$validatedRequest->get('examination_date'),
            'examination_note'=>ucwords($validatedRequest->get('examination_note')),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     * @param Examination $examination
     * @return $this
     */
    public function deleteExamination($id, Examination $examination)
    {
        $examinationToDelete = $examination->findOrFail($id);

        if($examinationToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createExaminationScheduleForm()
    {
        $viewType = 'Create Examination Schedule';

        return view('default.admin.examinations.create-examination-schedule',compact('viewType'));
    }

    /**
     * @param ExaminationSchedule $examinationSchedule
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createExaminationSchedule(ExaminationSchedule $examinationSchedule, Requests\Validator $validatedRequest)
    {
        $isCreated =  $examinationSchedule->create([
            'examination_id'=>$validatedRequest->get('examination_id'),
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'section_id'=>$validatedRequest->get('section_id'),
            'subject_id'=>$validatedRequest->get('subject_id'),
            'examination_date'=>$validatedRequest->get('examination_date'),
            'start_time'=>$validatedRequest->get('start_time'),
            'end_time'=>$validatedRequest->get('end_time'),
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_id'=>$validatedRequest->get('room_id'),
            'status'=>$validatedRequest->get('status')
        ]);

        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param ExaminationSchedule $examinationSchedule
     */
    public function examinationScheduleList(ExaminationSchedule $examinationSchedule)
    {
        $examinationScheduleList = $examinationSchedule->with('examination','studentClass', 'section', 'subject', 'building', 'floor', 'room')->get();
        //dd($examinationScheduleList);

        $viewType = 'Examination Schedule List';

        return view('default.admin.examinations.examination-schedule-list',compact('viewType', 'examinationScheduleList'));
    }

    public function viewExaminationSchedule($id, ExaminationSchedule $examinationSchedule)
    {
        $examinationScheduleData = $examinationSchedule->with('examination','studentClass', 'section', 'subject', 'building', 'floor', 'room')->findOrFail($id);
        //dd($examinationScheduleData);

        return view('default.admin.examinations.examination-schedule-view',compact('examinationScheduleData'));
    }

    /**
     * @param $id
     * @param ExaminationSchedule $examinationSchedule
     * @param ExaminationScheduleForm $examinationScheduleForm
     */
    public function getExaminationScheduleEditForm($id, ExaminationSchedule $examinationSchedule, ExaminationScheduleForm $examinationScheduleForm)
    {
        $viewType = 'Edit Examination Schedule';
        $editExaminationSchedule = $examinationScheduleForm;
        $editExaminationScheduleData = $this->editFormModel($examinationSchedule->findOrFail($id));

        return view('default.admin.examinations.examination-schedule-edit', compact('viewType', 'editExaminationSchedule', 'editExaminationScheduleData'));
    }

    /**
     * @param $id
     * @param ExaminationSchedule $examinationSchedule
     * @param Validator $validatedRequest
     * @return null
     */
    public function editExaminationSchedule($id, ExaminationSchedule $examinationSchedule, Validator $validatedRequest)
    {
        $examinationScheduleToEdit = $examinationSchedule->findOrFail($id);

        $isEdited = $examinationScheduleToEdit->update([
            'examination_id'=>$validatedRequest->get('examination_id'),
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'section_id'=>$validatedRequest->get('section_id'),
            'subject_id'=>$validatedRequest->get('subject_id'),
            'examination_date'=>$validatedRequest->get('examination_date'),
            'start_time'=>$validatedRequest->get('start_time'),
            'end_time'=>$validatedRequest->get('end_time'),
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_id'=>$validatedRequest->get('room_id'),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     * @param ExaminationSchedule $examinationSchedule
     * @return $this
     */
    public function deleteExaminationSchedule($id, ExaminationSchedule $examinationSchedule)
    {
        $examinationScheduleToDelete = $examinationSchedule->findOrFail($id);

        if($examinationScheduleToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }
}
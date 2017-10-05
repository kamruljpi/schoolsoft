<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/3/2016
 * Time: 3:21 PM
 */
namespace Erp\Http\Controllers\Routine;

use Erp\Http\Controllers\Controller;
use Erp\Forms\RoutineForm;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Http\Requests\Validator;
use Erp\Http\Requests;
use Erp\Models\Student\StudentClass;
use Erp\Models\Student\Section;
use Erp\Models\User\User;
use Erp\Models\Building\Building;
use Erp\Models\Floor\Floor;
use Erp\Models\Room\Room;
use Erp\Models\Routine\Routine;

class RoutineController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $routine;

    /**
     * @param Routine $routine
     */
    public function __construct(Routine $routine)
    {

        $this->middleware('auth');

        $this->routine = $routine;
    }

    /**
     * @param Routine $routine
     */
    public function index(Routine $routine)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $routineList = $routine->with('studentClass', 'section', 'subject', 'teacher')->paginate(20);
        //dd($routineList);

        $viewType = 'Routine List';

        return view('default.admin.routine.index',compact('viewType', 'routineList', 'locale', 'defaultLocale'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createRoutineForm()
    {
        $viewType = 'Create Routine';

        return view('default.admin.routine.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createRoutine(Requests\Validator $validatedRequest)
    {
        //dd($validatedRequest);
        $isCreated =  $this->routine->create([
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'section_id'=>$validatedRequest->get('section_id'),
            'subject_id'=>$validatedRequest->get('subject_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_id'=>$validatedRequest->get('room_id'),
            'weekday'=>$validatedRequest->get('weekday'),
            'class_start_time'=>$validatedRequest->get('class_start_time'),
            'class_end_time'=>$validatedRequest->get('class_end_time'),
            'coordinator_id'=>$validatedRequest->get('coordinator_id'),
            'status'=>$validatedRequest->get('status'),
            'CREATED_AT'=> date("y-m-d h:i:s"),
        ]);

        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewRoutine($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $routineData = $this->routine->with('studentClass', 'section', 'subject', 'building', 'floor', 'room', 'teacher', 'coordinator')->findOrFail($id);
        //dd($routineData);

        return view('default.admin.routine.view',compact('routineData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @param RoutineForm $routineForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getRoutineEditForm($id, RoutineForm $routineForm)
    {
        $viewType = 'Edit Routine';
        $editRoutine = $routineForm;
        $routineData = $this->editFormModel($this->routine->findOrFail($id));

        return view('default.admin.routine.edit', compact('viewType', 'editRoutine', 'routineData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     */
    public function editRoutine($id, Validator $validatedRequest)
    {
        $routineToEdit = $this->routine->findOrFail($id);

        $isEdited = $routineToEdit->update([
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'section_id'=>$validatedRequest->get('section_id'),
            'subject_id'=>$validatedRequest->get('subject_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'building_id'=>$validatedRequest->get('building_id'),
            'floor_id'=>$validatedRequest->get('floor_id'),
            'room_id'=>$validatedRequest->get('room_id'),
            'weekday'=>$validatedRequest->get('weekday'),
            'class_start_time'=>$validatedRequest->get('class_start_time'),
            'class_end_time'=>$validatedRequest->get('class_end_time'),
            'coordinator_id'=>$validatedRequest->get('coordinator_id'),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteRoutine($id)
    {
        $routineToDelete = $this->routine->findOrFail($id);

        if($routineToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }
}
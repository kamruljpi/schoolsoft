<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/19/2016
 * Time: 4:17 PM
 */
namespace Erp\Http\Controllers\AcademicQualification;

use Erp\Http\Controllers\ProjectController;
use Erp\Models\AcademicQualification\AcademicQualification;
use Erp\Forms\AcademicQualificationForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class AcademicQualificationController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $academicQualification;

    /**
     * @param AcademicQualification $academicQualification
     */
    public function __construct(AcademicQualification $academicQualification)
    {

        $this->middleware('auth');

        $this->academicQualification = $academicQualification;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createAcademicQualificationForm()
    {
        $viewType = 'Create Academic Qualification';

        return view('default.admin.academic-qualification.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createAcademicQualification(Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;
        $current_date_time = Carbon::now();
        foreach ($this->academicQualification->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->academicQualification->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->academicQualification->user_id = $loggerId;
        $this->academicQualification->education_level_id = $validatedRequest->get('education_level_id');
        $this->academicQualification->year_of_passing = $validatedRequest->get('year_of_passing');
        $this->academicQualification->duration = $validatedRequest->get('duration');
        $this->academicQualification->status = $validatedRequest->get('status');
        $this->academicQualification->created_at = $current_date_time;

        return $this->academicQualification->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param AcademicQualification $academicQualification
     */
    public function index(AcademicQualification $academicQualification)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;

        $academicQualificationList = $this->academicQualification->with('academicQualificationOfEducationLevel')->where('user_id', $loggerId)->paginate(5);
//        dd($academicQualificationList);
        $viewType = 'Academic Qualification List';

        return view('default.admin.academic-qualification.index',compact('viewType', 'academicQualificationList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param AcademicQualification $academicQualification
     */
    public function viewAcademicQualification($id, AcademicQualification $academicQualification)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $academicQualificationData = $this->academicQualification->with('academicQualificationOfEducationLevel')->findOrFail($id);
//        dd($academicQualificationData);

        return view('default.admin.academic-qualification.view', compact('academicQualificationData', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param AcademicQualificationForm $academicQualificationForm
     */
    public function getAcademicQualificationEditForm($id, AcademicQualificationForm $academicQualificationForm)
    {
        $viewType = 'Edit Academic Qualification';
        $editAcademicQualification = $academicQualificationForm;
        $academicQualificationData = $this->editFormModel($this->academicQualification->findOrFail($id));

        return view('default.admin.academic-qualification.edit', compact('viewType', 'editAcademicQualification', 'academicQualificationData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editAcademicQualification($id, Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;
        $current_date_time = Carbon::now();
        $academicQualificationToEdit = $this->academicQualification->findOrFail($id);
        foreach ($academicQualificationToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $academicQualificationToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $academicQualificationToEdit->user_id = $loggerId;
        $academicQualificationToEdit->education_level_id = $validatedRequest->get('education_level_id');
        $academicQualificationToEdit->year_of_passing = $validatedRequest->get('year_of_passing');
        $academicQualificationToEdit->duration = $validatedRequest->get('duration');
        $academicQualificationToEdit->status = $validatedRequest->get('status');
        $academicQualificationToEdit->updated_at = $current_date_time;

        return $academicQualificationToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteAcademicQualification($id)
    {
        $academicQualificationToDelete = $this->academicQualification->findOrFail($id);
        if($academicQualificationToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
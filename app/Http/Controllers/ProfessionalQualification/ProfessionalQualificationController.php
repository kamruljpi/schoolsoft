<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 2:57 PM
 */
namespace Erp\Http\Controllers\ProfessionalQualification;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\ProfessionalQualification\ProfessionalQualification;
use Erp\Forms\ProfessionalQualificationForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class ProfessionalQualificationController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $professionalQualification;

    /**
     * @param ProfessionalQualification $professionalQualification
     */
    public function __construct(ProfessionalQualification $professionalQualification)
    {

        $this->middleware('auth');

        $this->professionalQualification = $professionalQualification;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createProfessionalQualificationForm()
    {
        $viewType = 'Create Professional Qualification';

        return view('default.admin.qualifications.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createProfessionalQualification(Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;

        $current_date_time = Carbon::now();
        foreach ($this->professionalQualification->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->professionalQualification->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->professionalQualification->user_id = $loggerId;
        $this->professionalQualification->from_date = $validatedRequest->get('from_date');
        $this->professionalQualification->to_date = $validatedRequest->get('to_date');
        $this->professionalQualification->status = $validatedRequest->get('status');
        $this->professionalQualification->created_at = $current_date_time;

        return $this->professionalQualification->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param ProfessionalQualification $professionalQualification
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(ProfessionalQualification $professionalQualification)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;

//        $professionalQualificationList = $professionalQualification->all();
        $professionalQualificationList = $this->professionalQualification->with('professionalQualificationOfUser')->where('user_id', $loggerId)->paginate(20);
//        dd($professionalQualificationList);
        $viewType = 'Professional Qualification List';

        return view('default.admin.qualifications.index',compact('viewType', 'professionalQualificationList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     */
    public function viewProfessionalQualification($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $professionalQualificationData = $this->professionalQualification->with('professionalQualificationOfUser')->findOrFail($id);
//        dd($professionalQualificationData);
        return view('default.admin.qualifications.view',compact('professionalQualificationData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @param ProfessionalQualification $professionalQualification
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getProfessionalQualificationEditForm($id, ProfessionalQualificationForm $professionalQualificationForm)
    {
        $viewType = 'Edit Professional Qualification';
        $editProfessionalQualification = $professionalQualificationForm;
        $professionalQualificationData = $this->editFormModel($this->professionalQualification->findOrFail($id));

        return view('default.admin.qualifications.edit', compact('viewType', 'editProfessionalQualification', 'professionalQualificationData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editProfessionalQualification($id, Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;

        $current_date_time = Carbon::now();
        $professionalQualificationToEdit = $this->professionalQualification->findOrFail($id);
        foreach ($professionalQualificationToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $professionalQualificationToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $professionalQualificationToEdit->user_id = $loggerId;
        $professionalQualificationToEdit->from_date = $validatedRequest->get('from_date');
        $professionalQualificationToEdit->to_date = $validatedRequest->get('to_date');
        $professionalQualificationToEdit->status = $validatedRequest->get('status');
        $professionalQualificationToEdit->updated_at = $current_date_time;

        return $professionalQualificationToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteProfessionalQualification($id)
    {
        $professionalQualificationToDelete = $this->professionalQualification->findOrFail($id);
        if($professionalQualificationToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
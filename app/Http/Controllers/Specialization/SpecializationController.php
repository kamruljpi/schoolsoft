<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/13/2016
 * Time: 10:28 AM
 */
namespace Erp\Http\Controllers\Specialization;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Skill\Skill;
use Erp\Models\SkillCategory\SkillCategory;
use Erp\Models\Specialization\Specialization;
use Erp\Forms\SpecializationForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class SpecializationController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $specialization;

    /**
     * @param Specialization $specialization
     */
    public function __construct(Specialization $specialization)
    {

        $this->middleware('auth');

        $this->specialization = $specialization;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSpecializationForm()
    {
        $viewType = 'Create Specialization';

        return view('default.admin.specialization.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createSpecialization(Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;
        $skills = implode(',', $validatedRequest->get('skills'));
        $current_date_time = Carbon::now();
        foreach ($this->specialization->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->specialization->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->specialization->user_id = $loggerId;
        $this->specialization->skill_category_id = $validatedRequest->get('skill_category_id');
        $this->specialization->skills = $skills;
        $this->specialization->status = $validatedRequest->get('status');
        $this->specialization->created_at = $current_date_time;

        return $this->specialization->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param Specialization $specialization
     */
    public function index(Specialization $specialization)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;

        $specializationList = $this->specialization->with('specializationOfSkillCategory')->where('user_id', $loggerId)->paginate(5);
//        dd($specializationList);
        $viewType = 'Specialization List';

        return view('default.admin.specialization.index',compact('viewType', 'specializationList', 'locale', 'defaultLocale'));
    }

    public function viewSpecialization($id, Specialization $specialization, Skill $skill)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $specializationData = $this->specialization->with('specializationOfSkillCategory')->findOrFail($id);
//        dd($specializationData);

        $skills =  explode(',',$specializationData->skills);
//        dd($skills);

        foreach($skills as $key=> $value){
            $skillArray[] = $skill->findOrFail($value);
        }
//        dd($skillArray);

        return view('default.admin.specialization.view', compact('specializationData', 'skillArray', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param SpecializationForm $specializationForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getSpecializationEditForm($id, SpecializationForm $specializationForm)
    {
        $viewType = 'Edit Specialization';
        $editSpecialization = $specializationForm;
        $specializationData = $this->editFormModel($this->specialization->findOrFail($id));

        return view('default.admin.specialization.edit', compact('viewType', 'editSpecialization', 'specializationData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editSpecialization($id, Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;
        $skills = implode(',', $validatedRequest->get('skills'));
        $current_date_time = Carbon::now();
        $specializationToEdit = $this->specialization->findOrFail($id);
        foreach ($specializationToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $specializationToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $specializationToEdit->user_id = $loggerId;
        $specializationToEdit->skill_category_id = $validatedRequest->get('skill_category_id');
        $specializationToEdit->skills = $skills;
        $specializationToEdit->status = $validatedRequest->get('status');
        $specializationToEdit->updated_at = $current_date_time;

        return $specializationToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     */
    public function deleteSpecialization($id)
    {
        $specializationToDelete = $this->specialization->findOrFail($id);
        if($specializationToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
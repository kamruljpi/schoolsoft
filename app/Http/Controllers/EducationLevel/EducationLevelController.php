<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/19/2016
 * Time: 2:26 PM
 */
namespace Erp\Http\Controllers\EducationLevel;

use Erp\Http\Controllers\ProjectController;
use Erp\Models\EducationLevel\EducationLevel;
use Erp\Forms\EducationLevelForm;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Forms\DataHelper;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class EducationLevelController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $educationLevel;

    /**
     * @param EducationLevel $educationLevel
     */
    public function __construct(EducationLevel $educationLevel)
    {

        $this->middleware('auth');

        $this->educationLevel = $educationLevel;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createEducationLevelForm()
    {
        $viewType = 'Create Education Level';

        return view('default.admin.education-level.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createEducationLevel(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->educationLevel->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->educationLevel->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->educationLevel->status = $validatedRequest->get('status');
        $this->educationLevel->created_at = $current_date_time;

        return $this->educationLevel->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param EducationLevel $educationLevel
     */
    public function index(EducationLevel $educationLevel)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $educationLevelList = $this->educationLevel->paginate(5);
//        dd($educationLevelList);
        $viewType = 'Education Level List';

        return view('default.admin.education-level.index',compact('viewType', 'educationLevelList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param EducationLevelForm $educationLevelForm
     */
    public function getEducationLevelEditForm($id, EducationLevelForm $educationLevelForm)
    {
        $viewType = 'Edit Education Level';
        $editEducationLevel = $educationLevelForm;
        $educationLevelData = $this->editFormModel($this->educationLevel->findOrFail($id));

        return view('default.admin.education-level.edit', compact('viewType', 'editEducationLevel', 'educationLevelData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editEducationLevel($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $educationLevelToEdit = $this->educationLevel->findOrFail($id);
        foreach ($educationLevelToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $educationLevelToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $educationLevelToEdit->status = $validatedRequest->get('status');
        $educationLevelToEdit->updated_at = $current_date_time;

        return $educationLevelToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     */
    public function deleteEducationLevel($id)
    {
        $educationLevelToDelete = $this->educationLevel->findOrFail($id);
        if($educationLevelToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }

}
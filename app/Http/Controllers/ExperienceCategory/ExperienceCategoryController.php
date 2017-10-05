<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 11:40 AM
 */
namespace Erp\Http\Controllers\ExperienceCategory;


use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\ExperienceCategory\ExperienceCategory;
use Erp\Forms\ExperienceCategoryForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class ExperienceCategoryController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $experienceCategory;

    /**
     * @param ExperienceCategory $experienceCategory
     */
    public function __construct(ExperienceCategory $experienceCategory)
    {

        $this->middleware('auth');

        $this->experienceCategory = $experienceCategory;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createExperienceCategoryForm()
    {
        $viewType = 'Create Experience Category';

        return view('default.admin.experience_category.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createExperienceCategory(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->experienceCategory->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->experienceCategory->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->experienceCategory->status = $validatedRequest->get('status');
        $this->experienceCategory->created_at = $current_date_time;

        return $this->experienceCategory->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param ExperienceCategory $experienceCategory
     */
    public function index(ExperienceCategory $experienceCategory)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $experienceCategoryList = $experienceCategory->paginate(20);
//        $experienceCategoryList = $this->businessType->with('trainingUser', 'trainingCountry')->where('user_id', $loggerId)->get();

        $viewType = 'Experience Category List';

        return view('default.admin.experience_category.index', compact('viewType', 'experienceCategoryList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param ExperienceCategoryForm $experienceCategoryForm
     */
    public function getExperienceCategoryEditForm($id, ExperienceCategoryForm $experienceCategoryForm)
    {
        $viewType = 'Edit Experience Category';
        $editExperienceCategory = $experienceCategoryForm;
        $experienceCategoryData = $this->editFormModel($this->experienceCategory->findOrFail($id));

        return view('default.admin.experience_category.edit', compact('viewType', 'editExperienceCategory', 'experienceCategoryData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editExperienceCategory($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $experienceCategoryToEdit = $this->experienceCategory->findOrFail($id);
        foreach ($experienceCategoryToEdit->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $experienceCategoryToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $experienceCategoryToEdit->status = $validatedRequest->get('status');
        $experienceCategoryToEdit->updated_at = $current_date_time;

        return $experienceCategoryToEdit->save() ? back()->withSuccess('Successfully Updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteExperienceCategory($id)
    {
        $experienceCategoryToDelete = $this->experienceCategory->findOrFail($id);
        if($experienceCategoryToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }

    /**
     * @param $experienceCategoryId
     * @param ExperienceCategory $experienceCategory
     * @param Request $request
     */
    public function experienceOfExperienceCategory($experienceCategoryId, ExperienceCategory $experienceCategory, Request $request)
    {
        $selectedExperienceCategory = $experienceCategory->findOrFail($experienceCategoryId);
//        dd($selectedExperienceCategory);
        $experienceForExperienceCategory = $selectedExperienceCategory->experiences;
//        dd($experienceForExperienceCategory);
        if( $request->ajax()){
            return response()->json( [$experienceForExperienceCategory]);
        }
    }
}
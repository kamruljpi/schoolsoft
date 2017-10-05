<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 3:02 PM
 */
namespace Erp\Http\Controllers\SkillCategory;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\SkillCategory\SkillCategory;
use Erp\Models\Skill\Skill;
use Erp\Forms\SkillCategoryForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class SkillCategoryController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $skillCategory;

    /**
     * @param SkillCategory $skillCategory
     */
    public function __construct(SkillCategory $skillCategory)
    {

        $this->middleware('auth');

        $this->skillCategory = $skillCategory;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSkillCategoryForm()
    {
        $viewType = 'Create Skill Category';

        return view('default.admin.skill_category.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createSkillCategory(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->skillCategory->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->skillCategory->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->skillCategory->status = $validatedRequest->get('status');
        $this->skillCategory->created_at = $current_date_time;

        return $this->skillCategory->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param SkillCategory $skillCategory
     */
    public function index(SkillCategory $skillCategory)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $skillCategoryList = $skillCategory->paginate(5);

        $viewType = 'Skill Category List';

        return view('default.admin.skill_category.index', compact('viewType', 'skillCategoryList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param SkillCategoryForm $skillCategoryForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getSkillCategoryEditForm($id, SkillCategoryForm $skillCategoryForm)
    {
        $viewType = 'Edit Experience Category';
        $editSkillCategory = $skillCategoryForm;
        $skillCategoryData = $this->editFormModel($this->skillCategory->findOrFail($id));

        return view('default.admin.skill_category.edit', compact('viewType', 'editSkillCategory', 'skillCategoryData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editSkillCategory($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $skillCategoryToEdit = $this->skillCategory->findOrFail($id);
        foreach ($skillCategoryToEdit->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $skillCategoryToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $skillCategoryToEdit->status = $validatedRequest->get('status');
        $skillCategoryToEdit->updated_at = $current_date_time;

        return $skillCategoryToEdit->save() ? back()->withSuccess('Successfully Updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteSkillCategory($id)
    {
        $skillCategoryToDelete = $this->skillCategory->findOrFail($id);
        if($skillCategoryToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }

    public function skillOfSkillCategory($skillCategoryId, SkillCategory $skillCategory, Request $request)
    {
        $selectedSkillCategory = $skillCategory->findOrFail($skillCategoryId);
//        dd($selectedSkillCategory);
        $skillForSkillCategory = $selectedSkillCategory->skills;
//        dd($skillForSkillCategory);
        if( $request->ajax()){
            return response()->json( [$skillForSkillCategory]);
        }
    }
}
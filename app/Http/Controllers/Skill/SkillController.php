<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 3:55 PM
 */
namespace Erp\Http\Controllers\Skill;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Skill\Skill;
use Erp\Forms\SkillForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class SkillController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $skill;

    /**
     * @param Skill $skill
     */
    public function __construct(Skill $skill)
    {

        $this->middleware('auth');

        $this->skill = $skill;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSkillForm()
    {
        $viewType = 'Create Skill';

        return view('default.admin.skill.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createSkill(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->skill->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->skill->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->skill->skill_category_id = $validatedRequest->get('skill_category_id');
        $this->skill->status = $validatedRequest->get('status');
        $this->skill->created_at = $current_date_time;

        return $this->skill->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param Skill $skill
     */
    public function index(Skill $skill)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

//        $skillList = $skill->all();
        $skillList = $this->skill->with('skillCategory')->paginate(5);
//        dd($skillList);

        $viewType = 'Skill List';

        return view('default.admin.skill.index', compact('viewType', 'skillList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param SkillForm $skillForm
     */
    public function getSkillEditForm($id, SkillForm $skillForm)
    {
        $viewType = 'Edit Skill';
        $editSkill = $skillForm;
        $skillData = $this->editFormModel($this->skill->findOrFail($id));

        return view('default.admin.skill.edit', compact('viewType', 'editSkill', 'skillData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editSkill($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $skillToEdit = $this->skill->findOrFail($id);
        foreach ($skillToEdit->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $skillToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $skillToEdit->skill_category_id = $validatedRequest->get('skill_category_id');
        $skillToEdit->status = $validatedRequest->get('status');
        $skillToEdit->updated_at = $current_date_time;

        return $skillToEdit->save() ? back()->withSuccess('Successfully Updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteSkill($id)
    {
        $skillToDelete = $this->skill->findOrFail($id);
        if($skillToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
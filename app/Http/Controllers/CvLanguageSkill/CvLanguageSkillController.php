<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/11/2016
 * Time: 2:39 PM
 */
namespace Erp\Http\Controllers\CvLanguageSkill;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\CvLanguageSkill\CvLanguageSkill;
use Erp\Forms\CvLanguageSkillForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class CvLanguageSkillController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $cvLanguageSkill;

    /**
     * @param CvLanguageSkill $cvLanguageSkill
     */
    public function __construct(CvLanguageSkill $cvLanguageSkill)
    {

        $this->middleware('auth');

        $this->cvLanguageSkill = $cvLanguageSkill;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createCvLanguageSkillForm()
    {
        $viewType = 'Create LanguageSkill';

        return view('default.admin.cv_language_skill.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createCvLanguageSkill(Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;

        $current_date_time = Carbon::now();
        $this->cvLanguageSkill->user_id = $loggerId;
        $this->cvLanguageSkill->cv_language_id = $validatedRequest->get('cv_language_id');
        $this->cvLanguageSkill->writing = $validatedRequest->get('writing');
        $this->cvLanguageSkill->reading = $validatedRequest->get('reading');
        $this->cvLanguageSkill->speaking = $validatedRequest->get('speaking');
        $this->cvLanguageSkill->status = $validatedRequest->get('status');
        $this->cvLanguageSkill->created_at = $current_date_time;

        return $this->cvLanguageSkill->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param CvLanguageSkill $cvLanguageSkill
     */
    public function index(CvLanguageSkill $cvLanguageSkill)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;


        $cvLanguageSkillList = $this->cvLanguageSkill->with('cvLanguage')->where('user_id', $loggerId)->paginate(5);
//        dd($cvLanguageSkillList);
        $viewType = 'Language Skill List';

        return view('default.admin.cv_language_skill.index',compact('viewType', 'cvLanguageSkillList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param CvLanguageSkillForm $cvLanguageSkillForm
     */
    public function getCvLanguageSkillEditForm($id, CvLanguageSkillForm $cvLanguageSkillForm)
    {
        $viewType = 'Edit Language Skill';
        $editCvLanguageSkill = $cvLanguageSkillForm;
        $cvLanguageSkillData = $this->editFormModel($this->cvLanguageSkill->findOrFail($id));

        return view('default.admin.cv_language_skill.edit', compact('viewType', 'editCvLanguageSkill', 'cvLanguageSkillData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editCvLanguageSkill($id, Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;

        $current_date_time = Carbon::now();
        $cvLanguageSkillToEdit = $this->cvLanguageSkill->findOrFail($id);
        $cvLanguageSkillToEdit->user_id = $loggerId;
        $cvLanguageSkillToEdit->cv_language_id = $validatedRequest->get('cv_language_id');
        $cvLanguageSkillToEdit->writing = $validatedRequest->get('writing');
        $cvLanguageSkillToEdit->reading = $validatedRequest->get('reading');
        $cvLanguageSkillToEdit->speaking = $validatedRequest->get('speaking');
        $cvLanguageSkillToEdit->status = $validatedRequest->get('status');
        $cvLanguageSkillToEdit->updated_at = $current_date_time;

        return $cvLanguageSkillToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     */
    public function deleteCvLanguageSkill($id)
    {
        $cvLanguageSkillToDelete = $this->cvLanguageSkill->findOrFail($id);
        if($cvLanguageSkillToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
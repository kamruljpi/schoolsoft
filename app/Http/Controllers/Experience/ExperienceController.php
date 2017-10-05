<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 1:02 PM
 */
namespace Erp\Http\Controllers\Experience;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Experience\Experience;
use Erp\Forms\ExperienceForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class ExperienceController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $experience;

    /**
     * @param Experience $experience
     */
    public function __construct(Experience $experience)
    {

        $this->middleware('auth');

        $this->experience = $experience;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createExperienceForm()
    {
        $viewType = 'Create Experience';

        return view('default.admin.experience.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createExperience(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->experience->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->experience->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->experience->experience_category_id = $validatedRequest->get('experience_category_id');
        $this->experience->status = $validatedRequest->get('status');
        $this->experience->created_at = $current_date_time;

        return $this->experience->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param Experience $experience
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Experience $experience)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

//        $experienceList = $experience->all();
        $experienceList = $this->experience->with('experienceCategory')->paginate(20);
//        dd($experienceList);

        $viewType = 'Experience List';

        return view('default.admin.experience.index', compact('viewType', 'experienceList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param ExperienceForm $experienceForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getExperienceEditForm($id, ExperienceForm $experienceForm)
    {
        $viewType = 'Edit Experience';
        $editExperience = $experienceForm;
        $experienceData = $this->editFormModel($this->experience->findOrFail($id));

        return view('default.admin.experience.edit', compact('viewType', 'editExperience', 'experienceData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editExperience($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $experienceToEdit = $this->experience->findOrFail($id);
        foreach ($experienceToEdit->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $experienceToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $experienceToEdit->experience_category_id = $validatedRequest->get('experience_category_id');
        $experienceToEdit->status = $validatedRequest->get('status');
        $experienceToEdit->updated_at = $current_date_time;

        return $experienceToEdit->save() ? back()->withSuccess('Successfully Updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteExperience($id)
    {
        $experienceToDelete = $this->experience->findOrFail($id);
        if($experienceToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 3:26 PM
 */
namespace Erp\Http\Controllers\EmploymentHistory;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\EmploymentHistory\EmploymentHistory;
use Erp\Models\Experience\Experience;
use Erp\Models\ExperienceCategory\ExperienceCategory;
use Erp\Forms\EmploymentHistoryForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class EmploymentHistoryController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $employmentHistory;

    /**
     * @param EmploymentHistory $employmentHistory
     */
    public function __construct(EmploymentHistory $employmentHistory)
    {

        $this->middleware('auth');

        $this->employmentHistory = $employmentHistory;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createEmploymentHistoryForm()
    {
        $viewType = 'Create Employment History';

        return view('default.admin.employment_history.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createEmploymentHistory(Requests\Validator $validatedRequest)
    {
//        dd($validatedRequest);
        $loggerId = request()->user()->id;
        $experienceAll = implode(',', $validatedRequest->get('experience_all'));
        $current_date_time = Carbon::now();
        foreach ($this->employmentHistory->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->employmentHistory->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->employmentHistory->user_id = $loggerId;
        $this->employmentHistory->business_type_id = $validatedRequest->get('business_type_id');
        $this->employmentHistory->from_date = $validatedRequest->get('from_date');
        $this->employmentHistory->to_date = $validatedRequest->get('to_date');
        $this->employmentHistory->currently_working = 0;
        $this->employmentHistory->experience_category_id = $validatedRequest->get('experience_category_id');
        $this->employmentHistory->experience_all = $experienceAll;
        $this->employmentHistory->status = $validatedRequest->get('status');
        $this->employmentHistory->created_at = $current_date_time;

        return $this->employmentHistory->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param EmploymentHistory $employmentHistory
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(EmploymentHistory $employmentHistory)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;

        $employmentHistoryList = $this->employmentHistory->with('employmentHistoryOfBusinessType', 'employmentHistoryOfExperienceCategory')->where('user_id', $loggerId)->paginate(5);
//        dd($employmentHistoryList);
        $viewType = 'Employment History List';

        return view('default.admin.employment_history.index',compact('viewType', 'employmentHistoryList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param EmploymentHistory $employmentHistory
     * @param ExperienceCategory $experienceCategory
     */
    public function viewEmploymentHistory($id, EmploymentHistory $employmentHistory, Experience $experience)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $employmentHistoryData = $this->employmentHistory->with('employmentHistoryOfExperienceCategory','employmentHistoryOfBusinessType')->findOrFail($id);
//        dd($employmentHistoryData);

        $experiences =  explode(',',$employmentHistoryData->experience_all);
//        dd($experiences);

        foreach($experiences as $key=> $value){
            $experienceArray[] = $experience->findOrFail($value);
        }
//        dd($experienceArray);

        return view('default.admin.employment_history.view', compact('employmentHistoryData', 'experienceArray', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param EmploymentHistoryForm $employmentHistoryForm
     */
    public function getEmploymentHistoryEditForm($id, EmploymentHistoryForm $employmentHistoryForm)
    {
        $viewType = 'Edit Employment History';
        $editEmploymentHistory = $employmentHistoryForm;
        $employmentHistoryData = $this->editFormModel($this->employmentHistory->findOrFail($id));

        return view('default.admin.employment_history.edit', compact('viewType', 'editEmploymentHistory', 'employmentHistoryData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editEmploymentHistory($id, Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;
        $experienceAll = implode(',', $validatedRequest->get('experience_all'));
        $current_date_time = Carbon::now();
        $employmentHistoryToEdit = $this->employmentHistory->findOrFail($id);
        foreach ($employmentHistoryToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $employmentHistoryToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $employmentHistoryToEdit->user_id = $loggerId;
        $employmentHistoryToEdit->business_type_id = $validatedRequest->get('business_type_id');
        $employmentHistoryToEdit->from_date = $validatedRequest->get('from_date');
        $employmentHistoryToEdit->to_date = $validatedRequest->get('to_date');
        $employmentHistoryToEdit->currently_working = 1;
        $employmentHistoryToEdit->experience_category_id = $validatedRequest->get('experience_category_id');
        $employmentHistoryToEdit->experience_all = $experienceAll;
        $employmentHistoryToEdit->status = $validatedRequest->get('status');
        $employmentHistoryToEdit->updated_at = $current_date_time;

        return $employmentHistoryToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     */
    public function deleteEmploymentHistory($id)
    {
        $employmentHistoryToDelete = $this->employmentHistory->findOrFail($id);
        if($employmentHistoryToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
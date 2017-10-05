<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 11:16 AM
 */
namespace Erp\Http\Controllers\Training;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Training\Training;
use Erp\Forms\TrainingForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class TrainingController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $training;

    /**
     * @param Training $training
     */
    public function __construct(Training $training)
    {

        $this->middleware('auth');

        $this->training = $training;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createTrainingForm()
    {
        $viewType = 'Create Training';

        return view('default.admin.trainings.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createTraining(Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;

        $current_date_time = Carbon::now();
        foreach ($this->training->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->training->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->training->user_id = $loggerId;
        $this->training->country_id = $validatedRequest->get('country_id');
        $this->training->training_year = $validatedRequest->get('training_year');
        $this->training->duration = $validatedRequest->get('duration');
        $this->training->status = $validatedRequest->get('status');
        $this->training->created_at = $current_date_time;

        return $this->training->save()?back()->withSuccess('Successfully Created'):null;

    }

    /**
     * @param Training $training
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Training $training)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;

        //$trainingList = $training->all();
        $trainingList = $this->training->with('trainingUser', 'trainingCountry')->where('user_id', $loggerId)->paginate(20);

        $viewType = 'Training List';

        return view('default.admin.trainings.index',compact('viewType', 'trainingList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     */
    public function viewTraining($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $trainingData = $this->training->with('trainingUser', 'trainingCountry')->findOrFail($id);

        return view('default.admin.trainings.view',compact('trainingData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @param TrainingForm $trainingForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getTrainingEditForm($id, TrainingForm $trainingForm)
    {
        $viewType = 'Edit Training';
        $editTraining = $trainingForm;
        $trainingData = $this->editFormModel($this->training->findOrFail($id));

        return view('default.admin.trainings.edit', compact('viewType', 'editTraining', 'trainingData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editTraining($id, Requests\Validator $validatedRequest)
    {
        $loggerId = request()->user()->id;

        $current_date_time = Carbon::now();
        $trainingToEdit = $this->training->findOrFail($id);
        foreach ($trainingToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $trainingToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $trainingToEdit->user_id = $loggerId;
        $trainingToEdit->country_id = $validatedRequest->get('country_id');
        $trainingToEdit->training_year = $validatedRequest->get('training_year');
        $trainingToEdit->duration = $validatedRequest->get('duration');
        $trainingToEdit->status = $validatedRequest->get('status');
        $trainingToEdit->updated_at = $current_date_time;

        return $trainingToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteTraining($id)
    {
        $trainingToDelete = $this->training->findOrFail($id);
        if($trainingToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
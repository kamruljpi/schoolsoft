<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 3:26 PM
 */
namespace Erp\Http\Controllers\Division;


use Erp\Http\Controllers\Controller;
use Erp\Forms\DivisionForm;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Division\Division;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class DivisionController extends ProjectController
{
    use Lang,FormControll;

    private $division;

    /**
     * @param Division $division
     */
    public function __construct(Division $division)
    {

        $this->middleware('auth');

        $this->division = $division;
    }

    /**
     * @param Division $division
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Division $division)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $divisionList = $division->with('country')->paginate(5);
        //dd($divisionList);

        $viewType = 'Division List';

        return view('default.admin.division.index',compact('viewType', 'divisionList', 'locale', 'defaultLocale'));
    }
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createDivisionForm()
    {
        $viewType = 'Create Division';

        return view('default.admin.division.create',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createDivision(Requests\Validator $validatedRequest)
    {
        $this->division->country_id = $validatedRequest->get('country_id');
        foreach ($this->division->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->division->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->division->status = $validatedRequest->get('status');

        return $this->division->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param $id
     * @param DivisionForm $divisionForm
     */
    public function getDivisionEditForm($id, DivisionForm $divisionForm)
    {
        $viewType = 'Edit Division';
        $editDivision = $divisionForm;
        $divisionData = $this->editFormModel($this->division->findOrFail($id));

        return view('default.admin.division.edit', compact('viewType', 'editDivision', 'divisionData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editDivision($id, Requests\Validator $validatedRequest)
    {
        $divisionToEdit = $this->division->findOrFail($id);

        $divisionToEdit->country_id = $validatedRequest->get('country_id');
        foreach ($divisionToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $divisionToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $divisionToEdit->status = $validatedRequest->get('status');

        return $divisionToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewDivision($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $divisionData = $this->division->with('country')->findOrFail($id);
        //dd($divisionData);

        return view('default.admin.division.view',compact('divisionData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteDivision($id)
    {
        $divisionToDelete = $this->division->findOrFail($id);
        if($divisionToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
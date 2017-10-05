<?php

namespace Erp\Http\Controllers\Gender;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Gender\Gender;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class GenderController extends ProjectController
{
    use Lang,FormControll;

    private $gender;

    public function __construct(Gender $gender)
    {

        $this->middleware('auth');

        $this->gender = $gender;
    }


    public function index()
    {
        
        $model = $this->gender->paginate(10);
        //dd($model);
        $viewType = 'Gender List';

        return view('default.admin.gender.index',compact('viewType','model'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createGenderForm()
    {
        $viewType = 'Create Gender';

        return view('default.admin.gender.create',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse|null
     */
    public function createGender( Requests\Validator $validatedRequest )
    {

        foreach ($this->gender->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->gender->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->gender->status = $validatedRequest->get('status');


        return $this->gender->save()?back():null;
    }

    public function editGenderForm($id)
    {
        $viewType = 'Edit Gender';

        $genderToEdit =$this->editFormModel($this->gender->findOrFail($id)) ;

        return view('default.admin.gender.edit',compact('genderToEdit','viewType'));

    }

    public function editGender($id, Requests\Validator $validatedRequest)
    {
        $genderToEdit = $this->gender->findOrFail($id);

        foreach ($genderToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $genderToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $genderToEdit->status = $validatedRequest->get('status');

        return $genderToEdit->save()?back():null;
    }

    public function viewGender($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $genderToView = $this->gender->findOrFail($id);
        //dd($genderToView);
        return view('default.admin.gender.view',compact('genderToView', 'locale', 'defaultLocale'));

    }

    public function deleteGender($id)
    {
        $genderToDelete = $this->gender->findOrFail($id);

        if($genderToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');

    }




}

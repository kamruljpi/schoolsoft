<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 11:26 AM
 */
namespace Erp\Http\Controllers\Country;

use Erp\Forms\CountryForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Country\Country;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class CountryController extends ProjectController
{
    use Lang,FormControll;

    private $country;

    /**
     * @param Country $country
     */
    public function __construct(Country $country)
    {

        $this->middleware('auth');

        $this->country = $country;
    }

    /**
     * @param Country $country
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Country $country)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $countryList = $country->paginate(5);
        //dd($countryList);

        $viewType = 'Country List';

        return view('default.admin.country.index',compact('viewType', 'countryList', 'locale', 'defaultLocale'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createCountryForm()
    {
        $viewType = 'Create Country';

        return view('default.admin.country.create',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createCountry(Requests\Validator $validatedRequest)
    {
        foreach ($this->country->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->country->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->country->status = ucwords($validatedRequest->get('status'));


        return $this->country->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param $id
     * @param CountryForm $countryForm
     */
    public function getCountryEditForm($id, CountryForm $countryForm)
    {
        $viewType = 'Edit Country';
        $editCountry = $countryForm;
        $countryData = $this->editFormModel($this->country->findOrFail($id));

        return view('default.admin.country.edit', compact('viewType', 'editCountry', 'countryData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editCountry($id, Requests\Validator $validatedRequest)
    {
        $countryToEdit = $this->country->findOrFail($id);

        foreach ($countryToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $countryToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $countryToEdit->status = ucwords($validatedRequest->get('status'));

        return $countryToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewCountry($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $countryData = $this->country->findOrFail($id);
        //dd($countryData);

        return view('default.admin.country.view',compact('countryData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteCountry($id)
    {
        $countryToDelete = $this->country->findOrFail($id);
        if($countryToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/7/2016
 * Time: 5:49 PM
 */
namespace Erp\Http\Controllers\District;

use Erp\Http\Controllers\Controller;
use Erp\Forms\DistrictForm;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\District\District;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class DistrictController extends ProjectController
{
    use Lang,FormControll;

    private $district;

    /**
     * @param District $district
     */
    public function __construct(District $district)
    {

        $this->middleware('auth');

        $this->district = $district;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $districtList = $this->district->with('country', 'division')->paginate(5);
        //dd($districtList);

        $viewType = 'District List';

        return view('default.admin.district.index',compact('viewType', 'districtList', 'locale', 'defaultLocale'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createDistrictForm()
    {
        $viewType = 'Create District';

        return view('default.admin.district.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createDistrict(Requests\Validator $validatedRequest)
    {
        $this->district->country_id = $validatedRequest->get('country_id');
        $this->district->division_id = $validatedRequest->get('division_id');
        foreach ($this->district->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->district->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->district->status = $validatedRequest->get('status');

        return $this->district->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param $id
     * @param DistrictForm $districtForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getDistrictEditForm($id, DistrictForm $districtForm)
    {
        $viewType = 'Edit District';
        $editDistrict = $districtForm;
        $districtData = $this->editFormModel($this->district->findOrFail($id));

        return view('default.admin.district.edit', compact('viewType', 'editDistrict', 'districtData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     */
    public function editDistrict($id, Requests\Validator $validatedRequest)
    {
        $districtToEdit = $this->district->findOrFail($id);

        $districtToEdit->country_id = $validatedRequest->get('country_id');
        $districtToEdit->division_id = $validatedRequest->get('division_id');
        foreach ($districtToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $districtToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $districtToEdit->status = $validatedRequest->get('status');

        return $districtToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewDistrict($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $districtData = $this->district->with('country', 'division')->findOrFail($id);
        //dd($districtData);

        return view('default.admin.district.view',compact('districtData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteDistrict($id)
    {
        $districtToDelete = $this->district->findOrFail($id);
        if($districtToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 10:18 AM
 */
namespace Erp\Http\Controllers\BusinessType;

use Erp\Http\Controllers\Controller;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\BusinessType\BusinessType;
use Erp\Forms\BusinessTypeForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class BusinessTypeController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $businessType;

    /**
     * @param BusinessType $businessType
     */
    public function __construct(BusinessType $businessType)
    {

        $this->middleware('auth');

        $this->businessType = $businessType;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createBusinessTypeForm()
    {
        $viewType = 'Create Business Type';

        return view('default.admin.business_type.create', compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createBusinessType(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->businessType->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $this->businessType->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $this->businessType->status = $validatedRequest->get('status');
        $this->businessType->created_at = $current_date_time;

        return $this->businessType->save() ? back()->withSuccess('Successfully Created') : null;
    }

    /**
     * @param BusinessType $businessType
     */
    public function index(BusinessType $businessType)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $businessTypeList = $businessType->paginate(20);
//        $businessTypeList = $this->businessType->with('trainingUser', 'trainingCountry')->where('user_id', $loggerId)->get();

        $viewType = 'Business Type List';

        return view('default.admin.business_type.index', compact('viewType', 'businessTypeList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param BusinessTypeForm $businessTypeForm
     */
    public function getBusinessTypeEditForm($id, BusinessTypeForm $businessTypeForm)
    {
        $viewType = 'Edit Business Type';
        $editBusinessType = $businessTypeForm;
        $businessTypeData = $this->editFormModel($this->businessType->findOrFail($id));

        return view('default.admin.business_type.edit', compact('viewType', 'editBusinessType', 'businessTypeData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editBusinessType($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $businessTypeToEdit = $this->businessType->findOrFail($id);
        foreach ($businessTypeToEdit->translatedAttributes as $field) {
            foreach (config('app.locales') as $locale => $value) {
                if ($validatedRequest->get($field . '_' . $locale)) {
                    $businessTypeToEdit->translateOrNew($locale)->{$field} = $validatedRequest->get($field . '_' . $locale);
                }
            }
        }
        $businessTypeToEdit->status = $validatedRequest->get('status');
        $businessTypeToEdit->updated_at = $current_date_time;

        return $businessTypeToEdit->save() ? back()->withSuccess('Successfully Updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteBusinessType($id)
    {
        $businessTypeToDelete = $this->businessType->findOrFail($id);
        if($businessTypeToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
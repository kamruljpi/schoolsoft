<?php

/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 5/18/2016
 * Time: 4:37 PM
 */
namespace Erp\Http\Controllers\AmountType;

use Erp\Http\Controllers\Controller;
use Erp\Forms\AmountTypeForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Amount\AmountType;
use Erp\Http\Requests;
use Carbon\Carbon;

class AmountTypeController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $amountType;

    /**
     * @param AmountType $amountType
     */
    public function __construct(AmountType $amountType)
    {

        $this->middleware('auth');

        $this->amountType = $amountType;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createAmountTypeForm()
    {
        $viewType = 'Create Amount Type';

        return view('default.admin.amounts.create-amount-type',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createAmountType(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->amountType->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->amountType->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->amountType->alias = $validatedRequest->get('alias');
        $this->amountType->status = $validatedRequest->get('status');
        $this->amountType->created_at = $current_date_time;

        return $this->amountType->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param AmountType $amountType
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(AmountType $amountType)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $amountTypeList = $amountType->paginate(5);
        //dd($amountTypeList);

        $viewType = 'Amount Type List';

        return view('default.admin.amounts.index-amount-type',compact('viewType', 'amountTypeList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param AmountTypeForm $amountTypeForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getAmountTypeEditForm($id, AmountTypeForm $amountTypeForm)
    {
        $viewType = 'Edit Amount Type';
        $editAmountType = $amountTypeForm;
        $amountTypeData = $this->editFormModel($this->amountType->findOrFail($id));

        return view('default.admin.amounts.edit-amount-type', compact('viewType', 'editAmountType', 'amountTypeData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editAmountType($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $amountTypeToEdit = $this->amountType->findOrFail($id);
        foreach ($amountTypeToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $amountTypeToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $amountTypeToEdit->alias = $validatedRequest->get('alias');
        $amountTypeToEdit->status = $validatedRequest->get('status');
        $amountTypeToEdit->updated_at = $current_date_time;

        return $amountTypeToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteAmountType($id)
    {
        $amountTypeToDelete = $this->amountType->findOrFail($id);
        if($amountTypeToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
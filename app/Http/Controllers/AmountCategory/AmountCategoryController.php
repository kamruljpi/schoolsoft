<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/18/2016
 * Time: 5:55 PM
 */
namespace Erp\Http\Controllers\AmountCategory;

use Erp\Http\Controllers\Controller;
use Erp\Forms\AmountCategoryForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Amount\AmountCategory;
use Erp\Http\Requests;
use Carbon\Carbon;

class AmountCategoryController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $amountCategory;

    /**
     * @param AmountCategory $amountCategory
     */
    public function __construct(AmountCategory $amountCategory)
    {

        $this->middleware('auth');

        $this->amountCategory = $amountCategory;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createAmountCategoryForm()
    {
        $viewType = 'Create Amount Category';

        return view('default.admin.amounts.create-amount-category',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createAmountCategory(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->amountCategory->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->amountCategory->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->amountCategory->status = $validatedRequest->get('status');
        $this->amountCategory->created_at = $current_date_time;

        return $this->amountCategory->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param AmountCategory $amountCategory
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(AmountCategory $amountCategory)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $accountCategoryList = $amountCategory->paginate(5);
        //dd($accountCategoryList);

        $viewType = 'Amount Category List';

        return view('default.admin.amounts.index-amount-category',compact('viewType', 'accountCategoryList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param AmountCategoryForm $amountCategoryForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getAmountCategoryEditForm($id, AmountCategoryForm $amountCategoryForm)
    {
        $viewType = 'Edit Amount Category';
        $editAmountCategory = $amountCategoryForm;
        $amountCategoryData = $this->editFormModel($this->amountCategory->findOrFail($id));

        return view('default.admin.amounts.edit-amount-category', compact('viewType', 'editAmountCategory', 'amountCategoryData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editAmountCategory($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $amountCategoryToEdit = $this->amountCategory->findOrFail($id);
        foreach ($amountCategoryToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $amountCategoryToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $amountCategoryToEdit->status = $validatedRequest->get('status');
        $amountCategoryToEdit->updated_at = $current_date_time;

        return $amountCategoryToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteAmountCategory($id)
    {
        $amountCategoryToDelete = $this->amountCategory->findOrFail($id);
        if($amountCategoryToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
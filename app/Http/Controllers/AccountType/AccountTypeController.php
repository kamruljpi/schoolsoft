<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/18/2016
 * Time: 2:19 PM
 */
namespace Erp\Http\Controllers\AccountType;

use Erp\Http\Controllers\Controller;
use Erp\Forms\AccountTypeForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Account\AccountType;
use Erp\Http\Requests;
use Carbon\Carbon;

class AccountTypeController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $accountType;

    /**
     * @param AccountType $accountType
     */
    public function __construct(AccountType $accountType)
    {

        $this->middleware('auth');

        $this->accountType = $accountType;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createAccountTypeForm()
    {
        $viewType = 'Create Account Type';

        return view('default.admin.accounts.create-account-type',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createAccountType(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        foreach ($this->accountType->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->accountType->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->accountType->status = $validatedRequest->get('status');
        $this->accountType->created_at = $current_date_time;

        return $this->accountType->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param AccountType $accountType
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(AccountType $accountType)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

//        $accountTypeList = $accountType->all();
        $accountTypeList = $accountType->paginate(5);
        //dd($accountTypeList);

        $viewType = 'Account Type List';

        return view('default.admin.accounts.index-account-type',compact('viewType', 'accountTypeList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param AccountTypeForm $accountTypeForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getAccountTypeEditForm($id, AccountTypeForm $accountTypeForm)
    {
        $viewType = 'Edit Account Type';
        $editAccountType = $accountTypeForm;
        $accountTypeData = $this->editFormModel($this->accountType->findOrFail($id));

        return view('default.admin.accounts.edit-account-type', compact('viewType', 'editAccountType', 'accountTypeData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editAccountType($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $accountTypeToEdit = $this->accountType->findOrFail($id);
        foreach ($accountTypeToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $accountTypeToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $accountTypeToEdit->status = $validatedRequest->get('status');
        $accountTypeToEdit->updated_at = $current_date_time;

        return $accountTypeToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteAccountType($id)
    {
        $accountTypeToDelete = $this->accountType->findOrFail($id);
        if($accountTypeToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}
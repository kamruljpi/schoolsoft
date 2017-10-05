<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/18/2016
 * Time: 2:16 PM
 */
namespace Erp\Http\Controllers\Account;

use Erp\Forms\AccountForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\AmountCategoryForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Account\Account;
use Erp\Models\User\User;
use Erp\Models\Role\Role;
use Erp\Models\Amount\AmountCategory;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class AccountController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $account;

    /**
     * @param Account $account
     */
    public function __construct(Account $account)
    {

        $this->middleware('auth');

        $this->account = $account;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createAccountForm()
    {
        $viewType = 'Create Account';

        return view('default.admin.accounts.create',compact('viewType'));
    }

    public function userOfRole($roleId, Role $role, Request $request)
    {
        $roleOfUser = $role->findOrFail($roleId);
        $users = $roleOfUser->users;
        if( $request->ajax()){
            return response()->json( [$users]);
        }
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function createAccount(Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $loggerRoleId = request()->user()->roles()->first()->id;
        $loggerId = request()->user()->id;
        foreach ($this->account->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->account->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->account->receipt_no = $validatedRequest->get('receipt_no');
        $this->account->to_role_id = $loggerRoleId;
        $this->account->to_user_id = $loggerId;
        $this->account->from_role_id = $validatedRequest->get('from_role_id');
        $this->account->from_user_id = $validatedRequest->get('from_user_id');
        $this->account->account_type_id = $validatedRequest->get('account_type_id');
        $this->account->amount_type_id = $validatedRequest->get('amount_type_id');
        $this->account->amount_category_id = $validatedRequest->get('amount_category_id');
        $this->account->amount = $validatedRequest->get('amount');
        $this->account->status = "Active";
        $this->account->created_at = $current_date_time;

        return $this->account->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param Account $account
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Account $account)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        //$accountList = $account->all();
        $accountList = $this->account->with('accountType', 'amountType', 'amountCategory', 'toRole', 'fromRole', 'toUser', 'fromUser')->paginate(5);
        //dd($accountList);

        $viewType = 'Account List';

        return view('default.admin.accounts.index',compact('viewType', 'accountList', 'locale', 'defaultLocale'));
    }

    /**
     * @param $id
     * @param AccountForm $accountForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getAccountEditForm($id, AccountForm $accountForm)
    {
        $viewType = 'Edit Account';
        $editAccount = $accountForm;
        $accountData = $this->editFormModel($this->account->findOrFail($id));

        return view('default.admin.accounts.edit', compact('viewType', 'editAccount', 'accountData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editAccount($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $loggerRoleId = request()->user()->roles()->first()->id;
        $loggerId = request()->user()->id;
        $accountToEdit = $this->account->findOrFail($id);
        foreach ($accountToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $accountToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $accountToEdit->to_role_id = $loggerRoleId;
        $accountToEdit->to_user_id = $loggerId;
        $accountToEdit->from_role_id = $validatedRequest->get('from_role_id');
        $accountToEdit->from_user_id = $validatedRequest->get('from_user_id');
        $accountToEdit->account_type_id = $validatedRequest->get('account_type_id');
        $accountToEdit->amount_type_id = $validatedRequest->get('amount_type_id');
        $accountToEdit->amount_category_id = $validatedRequest->get('amount_category_id');
        $accountToEdit->amount = $validatedRequest->get('amount');
        $accountToEdit->status = "Active";
        $accountToEdit->updated_at = $current_date_time;

        return $accountToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewAccount($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $accountData = $this->account->with('accountType', 'amountType', 'amountCategory', 'toRole', 'fromRole', 'toUser', 'fromUser')->findOrFail($id);
        //dd($accountData);

        return view('default.admin.accounts.view',compact('accountData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function receiptAccount($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $accountData = $this->account->with('accountType', 'amountType', 'amountCategory', 'toRole', 'fromRole', 'toUser', 'fromUser', 'siteInfo')->findOrFail($id);
//        dd($accountData);

        return view('default.admin.accounts.account-receipt',compact('accountData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteAccount($id)
    {
        $accountToDelete = $this->account->findOrFail($id);
        if($accountToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function accountReportPage()
    {
        $viewType = 'Get Account Report';
        return view('default.admin.accounts.account-report',compact('viewType'));
    }

    public function accountReport($receiptNo = null, $roleId = null, $userId = null, $accountTypeId = null, $amountTypeId = null, $amountCategoryId = null, $fromDate = null, $toDate = null)
    {

//        $func[] = 'accountType', 'amountType', 'amountCategory', 'toRole', 'fromRole', 'toUser', 'fromUser';
        $func = [];
        $arg = [];
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $func[] = 'accountType';
        $func[] =  'amountType';
        $func[] =  'amountCategory';
        $func[] =  'toRole';
        $func[] =   'fromRole';
        $func[] =   'toUser';
        $func[] =    'fromUser';
//        dd($receiptNo);
        //$dt = Carbon::create($toDate);
       // $toDatePlus =  $dt->addDay();
//        $orThose = ['to_role_id'=>$roleId,'to_user_id'=>$userId,'account_type_id'=>$accountTypeId,'amount_type_id'=>$amountTypeId,'amount_category_id'=>$amountCategoryId];
        if($receiptNo != '0'){
            $arg['receipt_no'] = $receiptNo;
        }
        if((int)$roleId != 0){
            $arg['from_role_id'] = $roleId;
        }
        if((int)$userId != 0){
            $arg['from_user_id'] = $userId;
        }
        if((int)$accountTypeId != 0){
            $arg['account_type_id'] = $accountTypeId;
        }
        if((int)$amountTypeId != 0){
            $arg['amount_type_id'] = $amountTypeId;
        }
        if((int)$amountCategoryId != 0){
             $arg['amount_category_id'] = $amountCategoryId;
        }
        if(isset($fromDate) && !empty($fromDate) && isset($toDate) && !empty($toDate)){
            $accountReport = $this->account->with($func)
                ->where($arg)
                ->whereBetween('created_at', array($fromDate, $toDate))
                ->get();
        }else if($receiptNo == '0' && $roleId == 0 && $userId == 0 && $accountTypeId == 0 && $amountTypeId == 0 && $amountCategoryId == 0){
            $accountReport = $this->account->with($func)
                ->whereBetween('created_at', array($fromDate, $toDate))
                ->get();
        } else{
            $accountReport = $this->account->with($func)
                ->where($arg)
                ->get();
        }

//        dd($accountReport);
        return view('default.admin.accounts.account-report-details',compact('accountReport','locale','defaultLocale'));
    }
}
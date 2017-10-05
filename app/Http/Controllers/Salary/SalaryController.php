<?php

namespace Erp\Http\Controllers\Salary;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Salary\BonusAttribute;
use Erp\Models\Salary\BonusRule;
use Erp\Models\Salary\OvertimeRule;
use Erp\Models\Salary\SalaryCutRule;
use Erp\Models\Salary\SalaryRule;
use Illuminate\Http\Request;

use Erp\Models\Salary\SalaryType;
use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;


class SalaryController extends ProjectController
{
    use FormControll;

    private $salaryType;
    private $salaryRule;
    private $overtime;
    private $salaryCut;
    private $bonusAttribute;
    private $bonusRule;


    /**
     * SalaryController constructor.
     */
    public function __construct()
    {


    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSalaryTypeForm()
    {

        $viewType = 'Create Salary Type';
        return view('default.admin.salary.salary_type_create',compact('viewType'));
    }

    /**
     * @param SalaryType $salaryType
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createSalaryType(SalaryType $salaryType,Requests\Validator $validatedRequest)
    {
        $this->salaryType = $salaryType;

        foreach($this->salaryType->ownFields as $ownField){

            if($validatedRequest->{$ownField})

                $this->salaryType->{$ownField} = $validatedRequest->{$ownField} ;
        }
        if ($this->salaryType->save()) {

            return back()->withSuccess('Successfully Created');
        }
    }

    /**
     * @param SalaryType $salaryType
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function salaryTypeList(SalaryType $salaryType)
    {
        $this->salaryType = $salaryType;

        $salaryTypes = $this->salaryType->paginate(5);

        return view('default.admin.salary.salary-type-list',compact('salaryTypes','viewType'));

    }

    /**
     * @param $id
     * @param SalaryType $salaryType
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function salaryTypeEditForm($id, SalaryType $salaryType)
    {
        $this->salaryType = $salaryType;

        $viewType = 'Edit Salary Type';

        $salaryTypeToEdit =$this->editFormModel($this->salaryType->findOrFail($id)) ;

        return view('default.admin.salary.salary-type-edit',compact('salaryTypeToEdit','viewType'));
    }

    /**
     * @param $id
     * @param SalaryType $salaryType
     * @param Requests\Validator $validatedRequest
     * @return \Illuminate\Http\RedirectResponse
     */
    public function editSalaryType($id,SalaryType $salaryType,Requests\Validator $validatedRequest)
    {
        $this->salaryType = $salaryType;
        $salaryTypeToEdit = $this->salaryType->findOrFail($id);

        foreach($this->salaryType->ownFields as $ownField){
            if($validatedRequest->{$ownField})
                $salaryTypeToEdit->{$ownField} = $validatedRequest->{$ownField} ;
        }

        if($salaryTypeToEdit->save())
            return back()->withSuccess('Successfully Edited');

    }

    /**
     * @param $id
     * @param SalaryType $salaryType
     * @return mixed
     */
    public function salaryTypeDelete($id, SalaryType $salaryType)
    {
        $this->salaryType = $salaryType;
        $salaryTypeToDelete = $this->salaryType->findOrFail($id);

        if($salaryTypeToDelete->delete()){

            return back()->withSuccess('Successfully Deleted');
        }
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createAllowanceForm()
    {
      $viewType = 'Set Salary Rules';

      return view('default.admin.salary.salary_rules_create',compact('viewType'));
    }

    /**
     * @param SalaryRule $salaryRule
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createAllowance(SalaryRule $salaryRule, Request $request )
    {
        $this->salaryRule = $salaryRule;
        $allowanceRulesInJson = json_encode($request->except(['_token','field_name','name','status']));
        foreach($this->salaryRule->ownFields as $ownField){
            if($request->{$ownField})
                $this->salaryRule->{$ownField} = $request->{$ownField} ;
        }
        $this->salaryRule->rules_content = $allowanceRulesInJson;
//        $this->salaryRule->status_id = $request->status_id;

        if($this->salaryRule->save())
            return back()->withSuccess('Successfully Created');


    }

    public function allowanceRulesList(SalaryRule $salaryRule)
    {
        $this->salaryRule = $salaryRule;

        $viewType = 'Allowance List';

        $allowanceRules = $this->salaryRule->paginate(5) ;

        return view('default.admin.salary.allowance-rules-list',compact('allowanceRules','viewType'));
    }

    public function viewAllowanceRules($id,SalaryRule $salaryRule)
    {
        $this->salaryRule = $salaryRule;
        $viewType = 'View Salary Rule';

        $allowanceRuleToView = $this->salaryRule->findOrFail($id);

//        dd(json_decode($allowanceRuleToView->rules_content));
         return view('default.admin.salary.allowance-rule-view',compact('allowanceRuleToView','viewType'));
    }
    public function allowanceRuleEditForm($id,SalaryRule $salaryRule)
    {

    }
    public function editAllowanceRule($id,SalaryRule $salaryRule,Request $request)
    {

    }

    public function deleteAllowanceRule($id, SalaryRule $salaryRule)
    {
        $this->salaryRule = $salaryRule;

        $allowanceRuleToDelete = $this->salaryRule->findOrFail($id);

        if($allowanceRuleToDelete->delete()){
            return back()->withSuccess('Successfully Deleted');
        }

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createOvertimeForm()
    {
        $viewType = 'Set Overtime Rules';

        return view('default.admin.salary.create-overtime',compact('viewType'));
    }

    /**
     * @param OvertimeRule $overtimeRule
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOvertime(OvertimeRule $overtimeRule, Request $request)
    {
//        dd($request->all());
        $this->validate($request, [
            'name' => 'required',
            'amount' => 'required|numeric',
            'amount_type' => 'required',
            'status' => 'required',
        ]);

        $this->overtime = $overtimeRule;

        $overtimeRulesInJson = json_encode($request->except([
            '_token',
            'field_name',
            'name',
            'amount_type',
            'amount',
            'status'
        ]));

        foreach($this->overtime->ownFields as $ownField){
            if($request->{$ownField})
                $this->overtime->{$ownField} = $request->{$ownField} ;
        }

        $this->overtime->salary_types = $overtimeRulesInJson;

        if($this->overtime->save()){

            return back()->withSuccess('Successfully Created');
        }
        return back()->withErrors('Sorry !!! there is some problem');
    }


    public function overtimeRulesList(OvertimeRule $overtimeRule)
    {
        $this->overtime = $overtimeRule;
        $viewType = 'Overtime Rules List';
        $overtimeRuleList =  $this->overtime->paginate(5);

       return view('default.admin.salary.overtime-rules-list',compact('overtimeRuleList','viewType'));

    }

    public function viewOvertimeRule($id, OvertimeRule $overtimeRule)
    {
        $this->overtime = $overtimeRule;
        $viewType = 'View  Overtime Rule';
        $overtimeRuleToView = $this->overtime->findOrFail($id);
//        dd($overtimeRuleToView);

        return view('default.admin.salary.overtime-rule-view',compact('overtimeRuleToView','viewType'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSalaryCutForm()
    {
        $viewType = 'Set Salary Cut Rules';

        return view('default.admin.salary.create-salary-cut',compact('viewType'));
    }


    /**
     * @param SalaryCutRule $salaryCutRule
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createSalaryCut(SalaryCutRule $salaryCutRule, Request $request)
    {
        $this->salaryCut = $salaryCutRule;
        $salaryCutRulesInJson = json_encode($request->except([
            '_token',
            'field_name',
            'name',
            'amount_type',
            'amount',
            'status'
        ]));

        foreach($this->salaryCut->ownFields as $ownField){
            if($request->{$ownField})
                $this->salaryCut->{$ownField} = $request->{$ownField} ;
        }
        $this->salaryCut->salary_types = $salaryCutRulesInJson;


        if($this->salaryCut->save())
            return back()->withSuccess('Salary Cut Rule Created Successfully');
    }

    public function salaryCutRulesList(SalaryCutRule $salaryCutRule)
    {
        $this->salaryCut = $salaryCutRule;
        $viewType = 'Salary Cut Rule List';
        $salaryCutRuleList = $this->salaryCut->paginate(5);
//        dd($salaryCutRuleList);
        return view('default.admin.salary.salarycut-rules-list',compact('salaryCutRuleList','viewType'));
    }

    public function viewSalaryCutRule($id, SalaryCutRule $salaryCutRule)
    {
        $this->salaryCut = $salaryCutRule;
        $viewType = 'View  Salary Cut Rule';
        $salaryCutRuleToView = $this->salaryCut->findOrFail($id);
//        dd($salaryCutRuleToView);

        return view('default.admin.salary.salarycut-rule-view',compact('salaryCutRuleToView','viewType'));

    }

    /**
     * @param SalaryType $salaryType
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createBonusForm(SalaryType $salaryType)
    {
        $viewType = 'Set Bonus Rules';
        $this->salaryType = $salaryType;
        $salaryTypes = $this->salaryType->get();

        return view('default.admin.salary.create-bonus',compact('viewType','salaryTypes'));
    }

    /**
     * @param Request $request
     * @param BonusAttribute $bonusAttribute
     * @return mixed
     */
    public function createBonusAttr(Request $request, BonusAttribute $bonusAttribute)
    {
        $this->bonusAttribute = $bonusAttribute;
        $this->bonusAttribute->month = $request->get('month');
        $this->bonusAttribute->salary_types = json_encode($request->get('salaryTypes'));
        $this->bonusAttribute->amount = $request->get('amount');
        $this->bonusAttribute->amount_type = $request->get('amount_type');

        if($this->bonusAttribute->save()){
            return $this->bonusAttribute->all()->last()->id ;
        }

//      return $this->bonusAttribute->amount_type ;

    }


    /**
     * @param $id
     * @param BonusAttribute $bonusAttribute
     * @return mixed
     */
    public function checkBonusAttr($id, BonusAttribute $bonusAttribute)
    {
        $this->bonusAttribute = $bonusAttribute;
        $bonusAttributes = $this->bonusAttribute->findOrFail($id);
        return $bonusAttributes;
    }

    /**
     * @param $id
     * @param BonusAttribute $bonusAttribute
     */
    public function deleteBonusAttr($id, BonusAttribute $bonusAttribute)
    {
        $this->bonusAttribute = $bonusAttribute;
        $bonusAttributeToDelete = $this->bonusAttribute->findOrFail($id);

        $bonusAttributeToDelete->delete();
    }

    /**
     * @param Request $request
     * @param BonusRule $bonusRule
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createBonusRule(Request $request, BonusRule $bonusRule)
    {
        $this->bonusRule = $bonusRule;

        $this->bonusRule->name = $request->get('name');
        $this->bonusRule->status = $request->get('status');
        $this->bonusRule->rules = json_encode($request->get('rule_ids'));

        $this->bonusRule->save();

        return back()->withSuccess('Successfully Created');

    }

    public function bonusRulesList(BonusRule $bonusRule)
    {
        $this->bonusRule = $bonusRule;
        $viewType = 'Bonus Rule List';
        $bonusRuleList = $this->bonusRule->paginate(5);
//        dd($bonusRuleList);
        return view('default.admin.salary.bonus-rules-list',compact('bonusRuleList','viewType'));

    }

    public function viewBonusRule($id, BonusRule $bonusRule, BonusAttribute $bonusAttribute)
    {
        $this->bonusRule = $bonusRule;
        $this->bonusAttribute = $bonusAttribute;

        $bonusRuleToView = $this->bonusRule->findOrFail($id);
        $viewType = 'View Bonus Rule';
        $bonusAttrRules = explode(',',json_decode($bonusRuleToView->rules));

        $bonusRules = [];

        foreach($bonusAttrRules as $bonusAttrRuleId){

            $bonusAttributes = $this->bonusAttribute->findOrFail($bonusAttrRuleId);

//            dd($bonusAttributes->salary_types);
            $bonusRules[] = $bonusAttributes;

        }
//dd($bonusRules);

        return view('default.admin.salary.bonus-rule-view',compact('bonusRuleToView','bonusRules','viewType'));
    }

    public function determineSalaryForAllEmployees()
    {
        return redirect()->route('get-salary-from-punch');
    }




}

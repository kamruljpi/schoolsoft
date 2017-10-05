<?php

namespace Erp\Models\User;

use Erp\Models\ProjectModel;
use Erp\Models\Salary\BonusAttribute;
use Erp\Models\Salary\BonusRule;
use Erp\Models\Salary\OvertimeRule;
use Erp\Models\Salary\SalaryCutRule;
use Erp\Models\Salary\SalaryRule;
use Illuminate\Database\Eloquent\Model;

class UserSalary extends ProjectModel
{
    const USER = 'user_id';
    const BASIC = 'basic';
    const ALLOWANCE = 'salary_rule_id';
    const OVERTIME = 'overtime_rule_id';
    const SALARY_CUT = 'salary_cut_rule_id';
    const BONUS = 'bonus_rule_id';


    public $timestamps = false;
    protected $fillable = [
        self::USER,
        self::BASIC,
        self::ALLOWANCE,
        self::OVERTIME,
        self::SALARY_CUT,
        self::BONUS,
        self::CREATED_AT,
        self::UPDATED_AT
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);

    }

    /**
     * get the instance of the SalaryRule
     * it was named for Allowance Rules
     *
     * @return SalaryRule
     */
    public function getUserAllowanceInstance()
    {
        return new SalaryRule();
    }

    /**
     * @return OvertimeRule
     */
    public function getUserOvertimeInstance()
    {
        return new OvertimeRule();
    }

    /**
     * get Salary Cut Rule Instance
     *
     * @return SalaryCutRule
     */
    public function getUserSalaryCutInstance()
    {
        return new SalaryCutRule();
    }

    /**
     * get Bonus Rule Instance
     *
     * @return BonusRule
     */
    public function getBonusRuleInstance()
    {
        return new BonusRule();
    }

    /**
     * get Bonus Attribute Instance
     *
     * @return BonusAttribute
     */
    public function getBonusAttInstance()
    {
        return new BonusAttribute();
    }

    /**
     * @param User $user
     * @return mixed
     */
    public function usersCurrentBasic(User $user)
    {
        $currentBasic = 2000;
        if(!$user->userSalaries->isEmpty()){
            $currentBasic = $user->userSalaries->last()->basic;
        }


        return $currentBasic;

    }

    /**
     * get employees' current allowance_rule_id
     *
     * @param User $user
     * @return mixed
     */
    public function usersCurrentAllowances(User $user)
    {
        $currentAllowances = 1;
        if(!$user->userSalaries->isEmpty()){
            $currentAllowances = $user->userSalaries->last()->salary_rule_id;
        }

        return $currentAllowances;
    }

    /**
     * get employees' current overtime_rule_id
     *
     * @param User $user
     * @return mixed
     */
    public function usersCurrentOvertime(User $user)
    {
        $currentOvertime = 4;
        if (!$user->userSalaries->isEmpty()) {
            $currentOvertime = $user->userSalaries->last()->overtime_rule_id;
        }


        return $currentOvertime;
    }

    /**
     * get employees' current salary_cut_rule_id
     *
     * @param User $user
     * @return mixed
     */
    public function getUsersSalarycut(User $user)
    {
        $currentSalaryCut = 1;
        if (!$user->userSalaries->isEmpty()) {
            $currentSalaryCut = $user->userSalaries->last()->salary_cut_rule_id;
        }


        return $currentSalaryCut;
    }

    /**
     * get employees' current bonus_rule_id
     *
     * @param User $user
     * @return mixed
     */
    public function getUsersCurrentBonus(User $user)
    {
        $currentBonus = 21;
        if (!$user->userSalaries->isEmpty()) {
            $currentBonus = $user->userSalaries->last()->bonus_rule_id;
        }



        return $currentBonus;
    }

}
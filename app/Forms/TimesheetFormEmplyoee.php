<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 3/19/16
 * Time: 11:35 AM
 */

namespace Erp\Forms;


use Erp\Models\Punch\Punch;

class TimesheetFormEmplyoee extends Punch implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {

        return [

            [
                'type'=>'hidden',
                'name'=>self::USER,
                'value'=>request()->user()->id,
                'others'=>['id'=>'user-id']
            ],


            [
                'type'=>'select',
                'name'=>self::PUNCH_YEAR,
                'label' => 'Year',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-6',
                'options'=>$this->punchYearList(),
                'value'=>0,
                'validation'=>"required|in:".$this->punchYearKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::PUNCH_MONTH,
                'label' => 'Month',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-6',
                'options'=>$this->monthList(),
                'value'=>0,
                'validation'=>"required|in:".$this->monthKeys()
            ],
            [
                'type'=>'submit',
                'label' => 'Individual Timesheet',
                'others'=>[
                    'class'=>'btn btn-primary col-sm-2 punch-user',
                    'style'=>'background-color:#0073b7',
                    'readonly'=>'readonly',
                    'id'=>'individual-employee-report-btn'
                ],
            ]
        ];
    }

}
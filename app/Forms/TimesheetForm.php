<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 3/19/16
 * Time: 11:35 AM
 */

namespace Erp\Forms;


use Erp\Models\Punch\Punch;

class TimesheetForm extends Punch implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {

        return [

            [
                'type'=>'select',
                'name'=>self::PUNCH_USER,
                'label' => 'Employees',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',


                'options'=>$this->employeeListForSalary(),

                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->usersList(),

                'value'=>0,
                'validation'=>"required|in:".$this->employeeKeysForSalary()
            ],

            [
                'type'=>'select',
                'name'=>self::PUNCH_YEAR,
                'label' => 'Year',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
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
                'wrapclass'=>'col-sm-12',
                'options'=>$this->monthList(),
                'value'=>0,
                'validation'=>"required|in:".$this->monthKeys()
            ],


            [
                'type'=>'submit',
                'label' => 'All Employees Report',
                'others'=>[
                    'class'=>'btn btn-primary col-md-2 col-sm-4 col-sm-offset-3',
                    'readonly'=>'readonly',
                    'id'=>'time-report-btn'
                ],
            ],
          /*  [
                'type'=>'submit',
                'label' => 'See Individual Report',
                'others'=>[
                    'class'=>'btn btn-primary col-sm-2',
                    'style'=>'background-color:#0073b7',
                    'readonly'=>'readonly',
                    'id'=>'indi-report-btn'
                ],
            ],*/
            [
                'type'=>'submit',
                'label' => 'Individual Report',
                'others'=>[
                    'class'=>'btn btn-primary col-md-2 col-sm-4  col-sm-offset-3 punch-user',
                    'readonly'=>'readonly',
                    'id'=>'individual-employee-report-btn'
                ],
            ]
        ];
    }

}
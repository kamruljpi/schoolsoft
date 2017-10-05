<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 2/23/16
 * Time: 11:20 AM
 */

namespace Erp\Forms;


use Erp\Models\Salary\BonusRule;

class BonusForm extends BonusRule implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [


            [
                'type'=>'label',
                'value'=>'Set Bonus Rules Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#0073b7; color:white'
                ],
            ],

            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => '',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required'

            ],

            [
                'type'=>'label',
                'value' => 'Set Salary Type',
                'others'=>[
                    'class'=>'form-control bonus-wraper',
                    'style'=>'background-color:#0073b7; color:white'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],


            [
                'type'=>'select',
                'name'=>'',
                'label' => 'Months',
                'others'=>['class'=>'form-control bonus-wraper'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->monthList(),
                'value'=>0,
                'validation'=>"required|in:".$this->monthKeys()
            ],
            [
                'type'=>'checkboxsalary',
                'label'=>'',
                'check'=>['basic'=>0,'total'=>1],
            ],
            [
                'type'=>'checkboxsalary',
                'label'=>'',
                'check'=>$this->salaryTypeList(),
            ],
            [
                'type'=>'label',
                'value' => 'Set Amount',
                'others'=>[
                    'class'=>'form-control bonus-wraper',
                    'style'=>'background-color:#0073b7; color:white'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],
            [
                'type'=>'text',
                'name'=>self::AMOUNT,
                'label'=>'Amount',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control bonus-wraper',
                ],
                'validation'=>'required'

            ],
            [
                'type'=>'select',
                'name'=>self::AMOUNT_TYPE,
                'label' => 'Amount Type',
                'others'=>['class'=>'form-control bonus-wraper'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->salaryAmountTypeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->salaryAmountTypeKeys()
            ],
            [
                'type'=>'label',
                'value' => 'Add more',
                'others'=>[
                    'class'=>'form-control btn-success bonus-wraper',
                    'style'=>' color:white'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-3',
            ],
            /*[
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'readonly'=>'readonly'
                ],
            ]*/
            submitBtn($id),
        ];
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 2/23/16
 * Time: 11:11 AM
 */

namespace Erp\Forms;


use Erp\Models\Salary\OvertimeRule;

class OvertimeForm extends OvertimeRule implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [
            [
                'type'=>'label',
                'value'=>'Set Overtime Rules',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                   'class'=>'form_headering'
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Overtime Rule Name',
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
                   'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],
            [
                'type'=>'checkboxsalary',
                'label'=>'',
                'check'=>['total'=>'total','basic'=>'basic'],
            ],
            [
                'type'=>'checkboxsalary',
                'label'=>'',
                'check'=>$this->salaryTypeList(),
            ],
            [
                'type'=>'label',
                'value'=>'Set Ammount',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                   'class'=>'form_headering'
                ],
            ],

            [
                'type'=>'text',
                'name'=>self::AMOUNT,
                'label'=>'Amount',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required'

            ],
            [
                'type'=>'select',
                'name'=>self::AMOUNT_TYPE,
                'label' => 'Amount Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->salaryAmountTypeListForOthers(),
                //'value'=>0,
                'validation'=>"required|in:".$this->salaryAmountTypeKeysForOthers()
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'validation'=>"required"
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
//            [
//                'type'=>'submit',
//                'label' => 'Submit',
//                'others'=>[
//                    'class'=>'btn btn-primary',
//                    'id' => 'overtime-submit',
//                    'name'=>'overtime-submit'
//                ]
//
//            ]
        ];
    }

}
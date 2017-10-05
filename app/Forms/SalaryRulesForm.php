<?php

namespace Erp\Forms;

use Erp\Models\Salary\SalaryRule;

class SalaryRulesForm extends SalaryRule implements FormInterface
{
    use DataHelper, FormControll;

    public function formInputFields($id = null, $mode = null)
    {

        return [
            [
                'type'=>'label',
                'value'=>'Set Rules Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form_headering'
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Allowance Rules Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required'

            ],
            [
                'type'=>'label',
                'value' => 'Set Allowances',
                'others'=>[
                    'class'=>'form_headering'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],

            [
                'type'=>'salaryfield',
                'value'=>$this->salaryType(),
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

        ];
    }

}
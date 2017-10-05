<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/23/16
 * Time: 4:27 PM
 */

namespace Erp\Forms;


use Erp\Models\Leave\LeaveApplication;

class LeaveApplicationForm extends LeaveApplication implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [self::From,self::To,self::APPLIED_ON];

    public function formInputFields($id = null, $mode = null)
    {
        return [

            [
                'type'=>'select',
                'name'=>self::LEAVE_TYPE,
                'label' => 'Leave Type',
                'others'=>['class'=>'form-control', isset($id)?'disabled':null],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->leaveList(),
                'value'=>0,
                'validation'=>isset($id)?null:"required|in:".$this->leaveKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::SUBJECT,
                'label' => 'Subject',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>isset($id)?false:true,
                'validation'=>isset($id)?null:'required',
                'others'=>[
                    'class'=>'form-control',
                    isset($id)?'disabled':null
                ],
            ],
            [
                'type'=>'textarea',
                'name'=>self::EXPLANATION,
                'label' => 'Explanation',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>isset($id)?false:true,
                'validation'=>isset($id)?null:'required',
                'others'=>[
                    'class'=>'form-control',
                    isset($id)?'disabled':null
                ],
            ],
            [
                'type'=>'date',
                'name'=>self::From,
                'label' => 'From',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>date('m/d/Y'),
                'validation'=>isset($id)?null:"required"
            ],
            [
                'type'=>'date',
                'name'=>self::To,
                'label' => 'To',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>date('m/d/Y'),
                'validation'=>isset($id)?null:"required"
            ],
            [
                'type'=>'date',
                'name'=>self::APPLIED_ON,
                'label' => 'Applied On',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>date('m/d/Y'),

                'validation'=>isset($id)?null:"required"
            ],
            isset($id)?[
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'radval'=> [1=>'Active',5=>'Inactive'],
                'validation'=>"required|in:".$this->statusKeys()
            ]:null,

            /*[
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7 ; color:white',
                    'readonly'=>'readonly'
                ]
            ]*/
            submitBtn($id),
        ];
    }

}
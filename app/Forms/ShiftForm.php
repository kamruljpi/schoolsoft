<?php

namespace Erp\Forms;



use Erp\Models\Shift\Shift;

class ShiftForm extends Shift implements FormInterface
{
    use FormControll,DataHelper;

    protected $nonEditableFields = [];




    public function formInputFields($id=null,$mode=null)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Shift Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>$id?"required":"required|unique:shift_translations,name"
            ],
            [
                'type'=>'text',
                'name'=>self::SAT_IN,
                'label' => 'Saturday In Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::SAT_OUT,
                'label' => 'Saturday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',

                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::SUN_IN,
                'label' => 'Sunday In Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::SUN_OUT,
                'label' => 'Sunday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::MON_IN,
                'label' => 'Monday In Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::MON_OUT,
                'label' => 'Monday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::TUES_IN,
                'label' => 'Tuesday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::TUES_OUT,
                'label' => 'Tuesday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::WED_IN,
                'label' => 'Wednesday In Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::WED_OUT,
                'label' => 'Wednesday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],

            [
                'type'=>'text',
                'name'=>self::THURS_IN,
                'label' => 'Thursday In Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::THURS_OUT,
                'label' => 'Thursday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::FRI_IN,
                'label' => 'Friday In Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'text',
                'name'=>self::FRI_OUT,
                'label' => 'Friday Out Time',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control timepik',
                ],
                'validation'=>'required|date_format:"H:i:s"'
            ],
            [
                'type'=>'select',
                'name'=>self::STATUS,
                'label' => 'Status',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->statusList(),
                'value'=>0,
                'validation'=>"required|in:".$this->statusKeys()
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

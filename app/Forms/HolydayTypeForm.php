<?php


namespace Erp\Forms;


use Erp\Models\Holydays\HolyDayType;

class HolydayTypeForm extends HolyDayType implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::TYPE,
                'label' => 'Holiday Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null,
                'validation'=>isset($id)?"required|unique:holy_day_types,type,".$id:"required|unique:holy_day_types,type"
            ],
            /*[
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'radval'=> [1=>'Active',5=>'Inactive'],
                'validation'=>"required|in:".$this->statusKeys()
            ],*/
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
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
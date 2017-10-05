<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/24/16
 * Time: 4:51 PM
 */

namespace Erp\Forms;


use Erp\Models\Holydays\Holyday;

class HolydayForm extends Holyday implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::DATE,
                'label' => 'Date',
                'others'=>[
                    'class'=>'form-control',
                    'data-date-format'=>'yyyy-mm-dd'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                //'value'=>date('m/d/Y'),
                'value'=>null,
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::OCCASION,
                'label' => 'Occasion',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>'required',
                'others'=>[
                    'class'=>'form-control',
                ],
                ],
                [
                    'type'=>'select',
                    'name'=>self::TYPE,
                    'label' => 'Holyday Type',
                    'others'=>['class'=>'form-control'],
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12',
                    'options'=>$this->holydayTypeList(),
                    'value'=>0,
                    'validation'=>"required|in:".$this->holydayTypeKeys()
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
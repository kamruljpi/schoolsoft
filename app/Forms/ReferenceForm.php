<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 11:52 AM
 */

namespace Erp\Forms;


use Erp\Models\Reference\Reference;

class ReferenceForm extends Reference implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::REFERENCE,
                'label' => 'Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::ORGANIZATION,
                'label' => 'Organization',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::DESIGNATION,
                'label' => 'Designation',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'textarea',
                'name'=>self::ADDRESS,
                'label' => 'Address',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::OFFICE_PHONE,
                'label' => 'Phone (Off)',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::HOME_PHONE,
                'label' => 'Phone (Res)',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::MOBILE,
                'label' => 'Mobile',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::EMAIL,
                'label' => 'Email',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'select',
                'name'=>self::RELATION,
                'label' => 'Relation',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->relationList(),
                'value'=>0,
                'validation'=>"required|in:".$this->relationKeys()
            ],
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
                    'style'=>'background-color:#0073b7 ; color:white'
                ]

            ]*/
            submitBtn($id),
        ];
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/17/2016
 * Time: 11:56 AM
 */

namespace Erp\Forms;

use Erp\Models\Notice\Notice;

class MessageForm extends Notice implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'select',
                'name'=>'role_id',
                'label' => 'Role',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->rolesList(),
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::TO_SEND,
                'label' => 'To',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->usersList(),
                'value'=>0,
                'validation'=>"required|in:".$this->userKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::NOTICE,
                'label' => 'Subject',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],

            [
                'type'=>'textarea',
                'name'=>self::NOTICE_DESCRIPTION,
                'label' => 'Message',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
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
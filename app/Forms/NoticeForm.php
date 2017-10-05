<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/16/16
 * Time: 2:59 PM
 */

namespace Erp\Forms;

use Erp\Models\Notice\Notice;


class NoticeForm extends Notice implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::NOTICE,
                'label' => 'Notice Title',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::NOTICE_DATE,
                'label' => 'Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null,
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::TO_SEND,
                'label' => 'Send To',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[
                    'Student'=>'Student',
                    'Teacher'=>'Teacher',
                    'Guardian'=>'Guardian',
                    'Employee'=>'Employee',
                    'Manager'=>'Manager',
                    'All'=>'All'
                ],
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'textarea',
                'name'=>self::NOTICE_DESCRIPTION,
                'label' => 'Notice Description',
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
                'others'=>['class'=>'btn btn-success']

            ]*/
            submitBtn($id),
        ];
    }
}
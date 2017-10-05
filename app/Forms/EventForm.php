<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/25/2016
 * Time: 4:55 PM
 */

namespace Erp\Forms;

use Erp\Models\Event\Event;

class EventForm extends Event implements FormInterface
{
    use FormControll, DataHelper;

//    protected $nonEditableFields = [
//        self::PHOTO
//    ];

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::EVENT_TITLE,
                'label' => 'Title',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::FROM_DATE,
                'label' => 'From Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null
            ],
            [
                'type'=>'text',
                'name'=>self::TO_DATE,
                'label' => 'To Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null
            ],
            [
                'type'=>'file',
                'name'=>self::PHOTO,
                'label' => 'Event\'s  Photo',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                    'id'=>'file'
                ],
                'validation'=>"image"
            ],
            [
                'type'=>'textarea',
                'name'=>self::EVENT_DESCRIPTION,
                'label' => 'Details',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::EVENT_VENUE,
                'label' => 'Event Venue',
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
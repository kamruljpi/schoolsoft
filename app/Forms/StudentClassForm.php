<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/27/2016
 * Time: 4:55 PM
 */

namespace Erp\Forms;


use Erp\Models\Student\StudentClass;

class StudentClassForm extends StudentClass implements FormInterface
{
    use FormControll, DataHelper;//must

    protected $nonEditableFields = [];

    public function formInputFields($id = null, $mode = null)
    {

        return [
            [
                'type'=>'text',
                'name'=>self::CLASS_NAME,
                'label' => 'Class Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::TOTAL_RESULT_SYSTEM,
                'label' => 'Total Result System',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->totalResultSystemList(),
                'value'=>0,
                'validation'=>"required|in:".$this->totalResultSystemKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::TEACHER,
                'label' => 'Teacher',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->teacherList(),
                'value'=>0,
//                'validation'=>"required|in:".$this->teacherKeys()
            ],
            [
                'type'=>'textarea',
                'name'=>self::NOTE,
                'label' => 'Note',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ]
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
                'label' => $submitButton,
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7',
                    'readonly'=>'readonly'
                ],
            ]*/
            submitBtn($id),
        ];
    }
}
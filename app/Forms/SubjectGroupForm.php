<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 8/30/2016
 * Time: 11:57 AM
 */

namespace Erp\Forms;


use Erp\Models\SubjectGroup\SubjectGroup;

class SubjectGroupForm extends SubjectGroup implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id=null, $mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::SUBJECT_GROUP_NAME,
                'label' => 'Subject Group Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required'
            ],
            [
                'type'=>'select',
                'name'=>self::STUDENT_CLASS,
                'label' => 'Class Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()
            ],
            [
                'type'=>'subjectTable',
                'label' => 'Subject',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=> 0,
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
            submitBtn($id),
        ];
    }
}
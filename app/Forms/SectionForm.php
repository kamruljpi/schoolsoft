<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 4/25/16
 * Time: 3:19 PM
 */

namespace Erp\Forms;


use Erp\Models\Student\Section;

class SectionForm extends Section implements FormInterface
{

    use FormControll, DataHelper;

    public function formInputFields($id, $mode)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::SECTION,
                'label' => 'Section',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required'
            ],
            [
                'type'=>'text',
                'name'=>self::MERIT_LEVEL,
                'label' => 'Merit Level',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ]
            ],
            [
                'type'=>'select',
                'name'=>self::STUDENT_CLASS,
                'label' => 'Class',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()

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
                'validation'=>"required|in:".$this->teacherKeys()

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
                'label' => 'Submit',
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
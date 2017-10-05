<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/30/2016
 * Time: 4:24 PM
 */

namespace Erp\Forms;

use Erp\Models\Subject\Subject;


class SubjectForm extends Subject implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [];

    public function formInputFields($id = null, $mode = null)
    {

        return [
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
                'type'=>'select',
                'name'=>self::TEACHER,
                'label' => 'Teacher Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->teacherList(),
                'value'=>0,
//                'validation'=>"required|in:".$this->teacherKeys()

            ],
            [
                'type'=>'text',
                'name'=>self::SUBJECT_NAME,
                'label' => 'Subject Name',
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
                'name'=>self::SUBJECT_AUTHOR,
                'label' => 'Subject Author',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ]
            ],
            [
                'type'=>'text',
                'name'=>self::SUBJECT_CODE,
                'label' => 'Subject Code',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|unique:subjects,subject_code,'.$id
            ],
            [
                'type'=>'text',
                'name'=>self::SUBJECT_CREDIT,
                'label' => 'Subject Credit',
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
                'type'=>'select',
                'name'=>self::RESULT_SYSTEM,
                'label' => 'Result System',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->resultSystemList(),
                'value'=>0,
                'validation'=>"required|in:".$this->resultSystemKeys()
            ],
           /* [
                'type'=>'select',
                'name'=>self::SUBJECT_MARK_TYPE.'[]',
                'label' => 'Mark Types',
                'others'=>['class'=>'form-control','multiple'=>'multiple'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->markTypeList(),
                'value'=>0,
            ],*/
            [
                'type'=>'marksTypeTable',
//                'name'=>self::SUBJECT_MARK_TYPE.'[]',
                'label' => 'Mark Types',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=> $id?$this->getSubjectMarksTypeInfo($id):0,
            ],
            [
                'type'=>'number',
                'name'=>self::SUBJECT_TOTAL_MARKS,
                'label' => 'Total Marks',
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
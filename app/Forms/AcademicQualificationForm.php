<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/19/2016
 * Time: 3:54 PM
 */

namespace Erp\Forms;


use Erp\Models\AcademicQualification\AcademicQualification;

class AcademicQualificationForm extends AcademicQualification implements FormInterface

{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'select',
                'name'=>self::EDUCATION_LEVEL,
                'label' => 'Level of Education',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->educationLevelList(),
                'value'=>0,
                'validation'=>"required|in:".$this->educationLevelKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::DEGREE_TITLE,
                'label' => 'Exam/Degree Title',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::MAJOR,
                'label' => 'Concentration/ Major/Group',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::INSTITUTE_NAME,
                'label' => 'Institute Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::RESULT,
                'label' => 'Result',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'select',
                'name'=>self::YEAR_OF_PASSING,
                'label' => 'Year of Passing',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->passingYearList(),
                'value'=>0,
                'validation'=>"required|in:".$this->passingYearKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::DURATION,
                'label' => 'Duration',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'textarea',
                'name'=>self::ACHIEVEMENT,
                'label' => 'Achievement',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
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
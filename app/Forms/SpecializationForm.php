<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/13/2016
 * Time: 10:17 AM
 */

namespace Erp\Forms;


use Erp\Models\Specialization\Specialization;

class SpecializationForm extends Specialization implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'select',
                'name'=>self::SKILL_CATEGORY,
                'label' => 'Skill Category',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->skillCategoryList(),
                'value'=>0,
                'validation'=>"required|in:".$this->skillCategoryKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::SKILLS.'[]',
                'label' => 'Skills',
                'others'=>[
                    'class'=>'form-control',
                    'multiple'=>'multiple',
                    'id'=>'skills'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->skillList(),
                'value'=>0,
//                'validation'=>"required"
            ],
            /*[
                'type'=>'textarea',
                'name'=>self::SKILLS,
                'label' => 'Skills',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],*/
            [
                'type'=>'textarea',
                'name'=>self::SKILL_DESCRIPTION,
                'label' => 'Skill Description',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'textarea',
                'name'=>self::EXTRACURRICULAR_ACTIVITIES,
                'label' => 'Extracurricular Activities',
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
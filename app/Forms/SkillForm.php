<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 6/9/2016
 * Time: 3:46 PM
 */

namespace Erp\Forms;


use Erp\Models\Skill\Skill;

class SkillForm extends Skill implements FormInterface
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
                'type'=>'text',
                'name'=>self::SKILL,
                'label' => 'Skill Name',
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
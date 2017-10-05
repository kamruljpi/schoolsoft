<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/11/2016
 * Time: 2:27 PM
 */

namespace Erp\Forms;


use Erp\Models\CvLanguageSkill\CvLanguageSkill;

class CvLanguageSkillForm extends CvLanguageSkill implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'select',
                'name'=>self::CV_LANGUAGE,
                'label' => 'Language Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->languageList(),
                'value'=>0,
                'validation'=>"required|in:".$this->languageKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::WRITING,
                'label' => 'Writing',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[
                    'High'=>'High',
                    'Medium'=>'Medium',
                    'Low'=>'Low'
                ],
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::READING,
                'label' => 'Reading',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[
                    'High'=>'High',
                    'Medium'=>'Medium',
                    'Low'=>'Low'
                ],
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::SPEAKING,
                'label' => 'Speaking',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[
                    'High'=>'High',
                    'Medium'=>'Medium',
                    'Low'=>'Low'
                ],
                'value'=>0,
                'validation'=>"required"
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
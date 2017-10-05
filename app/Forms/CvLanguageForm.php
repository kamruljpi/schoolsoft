<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/11/2016
 * Time: 12:26 PM
 */

namespace Erp\Forms;


use Erp\Models\CvLanguage\CvLanguage;

class CvLanguageForm extends CvLanguage implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::CV_LANGUAGE,
                'label' => 'Language Name',
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
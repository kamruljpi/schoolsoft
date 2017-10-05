<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 2:46 PM
 */

namespace Erp\Forms;

use Erp\Models\ProfessionalQualification\ProfessionalQualification;

class ProfessionalQualificationForm extends ProfessionalQualification implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::CERTIFICATION,
                'label' => 'Certification',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::INSTITUTE,
                'label' => 'Institute',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::LOCATION,
                'label' => 'Location',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'text',
                'name'=>self::FROM_DATE,
                'label' => 'From',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>"required",
                'others'=>[
                    'class'=>'form-control',
                    'placeholder'=>'yyyy-mm-dd',
                    'data-date-format'=>"yyyy-mm-dd"
                ]
            ],
            [
                'type'=>'text',
                'name'=>self::TO_DATE,
                'label' => 'To',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>"required",
                'others'=>[
                    'class'=>'form-control',
                    'placeholder'=>'yyyy-mm-dd',
                    'data-date-format'=>"yyyy-mm-dd"
                ]
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
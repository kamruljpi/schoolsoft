<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 11:01 AM
 */

namespace Erp\Forms;

use Erp\Models\Training\Training;

class TrainingForm extends Training implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {

        return[
            [
                'type'=>'text',
                'name'=>self::TRAINING_TITLE,
                'label' => 'Training Title',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'textarea',
                'name'=>self::TRAINING_COVER,
                'label' => 'Topic Covered',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
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
                'type'=>'select',
                'name'=>self::COUNTRY,
                'label' => 'Country',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->countryList(),
                'value'=>0,
                'validation'=>"required|in:".$this->countryKeys()
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
                'type'=>'select',
                'name'=>self::TRAINING_YEAR,
                'label' => 'Training Year',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->trainingYearList(),
                'value'=>0,
                'validation'=>"required|in:".$this->trainingYearKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::DURATION,
                'label' => 'Duration',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>"required",
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
                'label' => $submitButton,
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7 ; color:white'
                ]

            ]*/
            submitBtn($id),
        ];
    }
}
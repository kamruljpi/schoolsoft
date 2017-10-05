<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/4/2016
 * Time: 3:00 PM
 */

namespace Erp\Forms;

use Erp\Models\Examinations\Examination;

class ExaminationForm extends Examination implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [];

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::EXAMINATION_NAME,
                'label' => 'Examination Name',
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
                'name'=>self::EXAMINATION_DATE,
                'label' => 'Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null,
                'validation'=>"required"
            ],
            [
                'type'=>'textarea',
                'name'=>self::EXAMINATION_NOTE,
                'label' => 'Note',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
//                                    'maxlength'=>10,
//                                    'minlength'=>5,
                ],

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
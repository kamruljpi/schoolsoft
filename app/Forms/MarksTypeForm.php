<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 5/10/16
 * Time: 9:47 AM
 */

namespace Erp\Forms;


use Erp\Models\Marks\MarksType;

class MarksTypeForm extends MarksType implements FormInterface
{
    use FormControll,DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::MARKS_TYPE,
                'label' => 'Marks Type',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|unique:marks_types,'.self::MARKS_TYPE.','.$id
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            /*[
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'readonly'=>'readonly'
                ],
            ]*/
            submitBtn($id),
        ];
    }
}
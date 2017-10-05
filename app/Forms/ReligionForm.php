<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 1/11/2016
 * Time: 8:23 PM
 */

namespace Erp\Forms;


use Erp\Models\Religion\Religion;

class ReligionForm extends Religion implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Religion Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|unique:religions,name,'.$id
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Religion Status',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>''
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
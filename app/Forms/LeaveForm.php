<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/21/16
 * Time: 5:15 PM
 */

namespace Erp\Forms;


use Erp\Models\Leave\Leave;

class LeaveForm extends Leave implements FormInterface
{
    use FormControll;

    public function formInputFields($id=null,$mode=null)
    {
        return [

            [
                'type'=>'text',
                'name'=>self::LEAVE_TYPE,
                'label' => 'Leave Type',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|unique:leaves,type,'.$id
            ],
            [
                'type'=>'textarea',
                'name'=>self::LEAVE_DETAILS,
                'label' => 'Leave Details',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::MAXIMUM_DAYS,
                'label' => 'Maximum Days',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|integer',

            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::POSITION,
                'label' => 'Position',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
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
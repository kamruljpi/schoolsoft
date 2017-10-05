<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 1/12/2016
 * Time: 4:13 PM
 */

namespace Erp\Forms;


use Erp\Models\Department\Department;

class DepartmentForm extends Department implements FormInterface
{
    use FormControll;

    protected $nonEditableFields = [];

    public function formInputFields ($id = null, $mode=null)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Department Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|unique:departments,name,'.$id
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
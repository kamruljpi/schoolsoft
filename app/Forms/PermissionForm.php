<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/2/16
 * Time: 12:16 PM
 */

namespace Erp\Forms;


use Erp\Models\Permission\Permission;

class PermissionForm extends Permission implements FormInterface
{
    use FormControll;

    protected $nonEditableFields = [];

    public function formInputFields($id=null,$mode=null)
    {
        return
            [
                [
                    'type'=>'text',
                    'name'=>self::NAME,
                    'label' => 'Permission',
                    'value'=>null,
                    'labclass'=>'col-sm-12',
                    'wrapclass'=>'col-sm-12 ',
                    'trans'=>false,
                    'others'=>[
                        'class'=>'form-control',
                    ],
                    'validation'=>'required|unique:permissions,name,'.$id
                ],
                [
                    'type'=>'text',
                    'name'=>self::LABEL,
                    'label' => 'Permission Description',
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
                    'type'=>'radio',
                    'name'=>self::STATUS,
                    'label' => 'Permission Status',
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
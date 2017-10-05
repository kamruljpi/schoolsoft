<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/2/16
 * Time: 12:16 PM
 */

namespace Erp\Forms;




class AssignPermissionForm implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return [
            [
                'type'=>'select',
                'name'=>'role_id',
                'label' => 'User Group',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->rolesList(),
                'value'=>0,
                'validation'=>"required|in:".$this->roleKeys()
            ],

            [
                'type'=>'submit',
                'label' => 'Assign Permission',
                'others'=>[
                    'class'=>'btn btn-success',
                    'id'=>'access-btn',
                    'readonly'=>'readonly'
                ],
            ]
        ];
    }

}
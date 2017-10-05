<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/29/15
 * Time: 11:48 AM
 */

namespace Erp\Forms;


use Erp\Forms\FormInterface;
use Erp\Models\Shift\Shift;


class AssignShift extends Shift implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null,$mode=null)
    {
        return [
            [
                'type'=>'select',
                'name'=>'shift_id',
                'label' => 'Shift Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->shiftList(),
                'value'=>0,
                'validation'=>"required|in:".$this->shiftKeys()
            ],
            [
                'type'=>'select',
                'name'=>'department_id',
                'label' => 'Department Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->departmentList(),
                'value'=>0,
                'validation'=>"required|in:".$this->departmentKeys()
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
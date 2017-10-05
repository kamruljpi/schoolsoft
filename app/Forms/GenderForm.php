<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/21/15
 * Time: 12:00 PM
 */

namespace Erp\Forms;


use Erp\Models\Gender\Gender;

class GenderForm extends Gender implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null,$mode=null)
    {
        return [

//            $this->hiddenField(),
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Gender Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required|unique:gender_translations,gender_name,'.$id,
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
                'label' => 'Submit',
                'others'=>['class'=>'btn btn-success']

            ]*/
            submitBtn($id),
        ];
    }

}
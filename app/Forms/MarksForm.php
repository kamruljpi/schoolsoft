<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 5/10/16
 * Time: 3:40 PM
 */

namespace Erp\Forms;


use Erp\Models\Marks\Marks;

class MarksForm extends Marks implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id=null, $mode=null)
    {
        return [

            [
                'type'=>'text',
                'name'=>self::SUBJECT,
                'label' => 'Subject Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required'

            ],
            [
                'type'=>'text',
                'name'=>self::SUBJECT_TOTAL,
                'label' => 'Subject Total',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required'

            ],

            [
                'type'=>'marksType',
                'value'=>$this->marksTypes(),
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
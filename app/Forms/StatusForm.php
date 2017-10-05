<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 1/23/16
 * Time: 3:21 PM
 */

namespace Erp\Forms;


use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Status\Status;

class StatusForm extends Status implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null, $mode = null)
    {
        return [
            [
                'type'=>'text',
                'name'=>self::Name,
                'label' => 'Status Name',
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
                    'style'=>'background-color:#0073b7',
                    'readonly'=>'readonly'
                ],
            ]*/
            submitBtn($id),

        ];
    }

}
<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/28/15
 * Time: 3:01 PM
 */

namespace Erp\Forms;


use Erp\Models\User\User;

class LoginForm extends User implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::EMAIL,
                'label' =>'&nbsp;',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                    'placeholder'=>'Email'
                ],
                'validation'=>'required'
            ],
            [
                'type'=>'password',
                'name'=>self::PASSWORD,
                'label' =>'&nbsp;',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                    'placeholder'=>'Password'
                ],
                'validation'=>'required'

            ]
        ];
    }

}
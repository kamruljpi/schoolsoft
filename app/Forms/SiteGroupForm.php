<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 6/7/16
 * Time: 12:56 PM
 */

namespace Erp\Forms;


use Erp\Models\Site\SiteGroup;

class SiteGroupForm extends SiteGroup implements FormInterface
{
    use FormControll;

    public function formInputFields($id=null,$mode=null)
    {
        return [

            [
                'type'=>'text',
                'name'=>self::SITE_GROUP_NAME,
                'label' => 'Institution Group Name',
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
                'name'=>self::SITE_GROUP_ALIAS,
                'label' => 'Institution Group Alias',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:site_groups,".self::SITE_GROUP_ALIAS.",".$id

            ],
            [
                'type'=>'email',
                'name'=>self::SITE_GROUP_EMAIL,
                'label' => ' Email',
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
                'name'=>self::SITE_GROUP_ADDRESS,
                'label' => 'Address',
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
                'type'=>'number',
                'name'=>self::SITE_GROUP_PHONE,
                'label' => 'Phone',
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
                'label' => 'Status',
                'radval'=> [true=>'Active',false=>'Inactive'],
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
                    'style'=>'background-color:#0073b7',
                    'readonly'=>'readonly'
                ],
            ]*/
            submitBtn($id),
        ];
    }
}
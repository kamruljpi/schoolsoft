<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 6/6/16
 * Time: 4:15 PM
 */

namespace Erp\Forms;


use Erp\Models\Site\SiteInfo;


class SiteInfoForm extends SiteInfo implements FormInterface
{
    use FormControll,DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [

            [
                'type'=>'select',
                'name'=>self::SITE_TYPE_ID,
                'label' => 'Payment Cycle',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->siteTypeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->siteTypeKeys()
            ],

            [
                'type'=>'select',
                'name'=>self::SITE_GROUP_ID,
                'label' => 'Institution Group',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->siteGroupList(),
                'value'=>0,
                'validation'=>"required|in:".$this->siteGroupKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::SITE_NAME,
                'label' => 'Institution Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::SITE_ADDRESS,
                'label' => 'Institution Address',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::SITE_ALIAS,
                'label' => 'Institution Alias',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:site_infos,site_alias"

            ],
            [
                'type'=>'file',
                'name'=>self::SITE_LOGO,
                'label' => 'Institution  Logo',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                    'id'=>'file'
                ],
                'validation'=>"image"
            ],
            [
                'type'=>'email',
                'name'=>self::SITE_EMAIL,
                'label' => 'Institution Email',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:site_infos,site_email|unique:users,email"

            ],
            [
                'type'=>'number',
                'name'=>self::SITE_PHONE,
                'label' => 'Institution Phone No',
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
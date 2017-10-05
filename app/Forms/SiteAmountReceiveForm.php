<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/23/2016
 * Time: 10:30 PM
 */

namespace Erp\Forms;

use Erp\Models\SiteAmountReceive\SiteAmountReceive;

class SiteAmountReceiveForm extends SiteAmountReceive implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>'site_id',
                'label' => 'Site Name',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->siteInfoList(),
                'value'=>0,
                'validation'=>"required|in:".$this->siteInfoKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::DATE,
                'label' => 'Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null,
                'validation'=>"required"
            ],
            [
                'type'=>'text',
                'name'=>self::AMOUNT,
                'label' => 'Amount',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>'required',
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
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7 ; color:white'
                ]

            ]*/
            submitBtn($id),
        ];
    }
}
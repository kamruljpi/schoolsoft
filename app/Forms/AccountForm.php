<?php
/**
 * Created by PhpStorm.
 * User: Account
 * Date: 5/22/2016
 * Time: 2:23 PM
 */

namespace Erp\Forms;


use Erp\Models\Account\Account;

class AccountForm extends Account implements FormInterface
{
    use FormControll, DataHelper;

    protected $nonEditableFields = [
        self::RECEIPT_NO
    ];

    public function formInputFields($id = null,$mode=null)
    {
        return[
            [
                'type'=>'text',
                'name'=>self::RECEIPT_NO,
                'label' => 'Receipt No',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'validation'=>"required|unique:accounts,".self::RECEIPT_NO.",".$id,
                'others'=>['class'=>'form-control']
            ],
            /*[
                'type'=>'select',
                'name'=>self::TO_ROLE_ID,
                'label' => 'To User Role',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->rolesList(),
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::TO_USER_ID,
                'label' => 'To User',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->usersList(),
                'value'=>0,
                'validation'=>"required|in:".$this->userKeys()
            ],*/
            [
                'type'=>'select',
                'name'=>self::FROM_ROLE_ID,
                'label' => 'User Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->rolesList(),
                'value'=>0,
                'validation'=>"required"
            ],
            [
                'type'=>'select',
                'name'=>self::FROM_USER_ID,
                'label' => 'User',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->usersList(),
                'value'=>0,
                'validation'=>"required|in:".$this->userKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::ACCOUNT_TYPE_ID,
                'label' => 'Account Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->accountTypeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->accountTypeKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::AMOUNT_TYPE_ID,
                'label' => 'Amount Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->amountTypeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->amountTypeKeys()
            ],
            [
                'type'=>'select',
                'name'=>self::AMOUNT_CATEGORY_ID,
                'label' => 'Amount Category',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->amountCategoryList(),
                'value'=>0,
                'validation'=>"required|in:".$this->amountCategoryKeys()
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
                'type'=>'text',
                'name'=>self::ACCOUNT,
                'label' => 'Account Subject',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            [
                'type'=>'textarea',
                'name'=>self::ACCOUNT_DESCRIPTION,
                'label' => 'Account Note',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>true,
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],
            /*[
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'radval'=> ['Active'=>'Active','Inactive'=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'validation'=>'required',
                'others'=>['class'=>'form-control']
            ],*/
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
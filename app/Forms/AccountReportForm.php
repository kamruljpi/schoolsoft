<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/24/2016
 * Time: 10:32 AM
 */

namespace Erp\Forms;


class AccountReportForm implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>'receipt_no',
                'label' => 'Receipt No',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->receiptNoList(),
                'value'=>0
            ],
            [
                'type'=>'select',
                'name'=>'role_id',
                'label' => 'User Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->rolesList(),
                'value'=>0
            ],
            [
                'type'=>'select',
                'name'=>'user_id',
                'label' => 'User',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->usersList(),
                'value'=>0,
                'validation'=>"in:".$this->userKeys()
            ],
            [
                'type'=>'select',
                'name'=>'account_type_id',
                'label' => 'Account Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->accountTypeList(),
                'value'=>0,
                'validation'=>"in:".$this->accountTypeKeys()
            ],
            [
                'type'=>'select',
                'name'=>'amount_type_id',
                'label' => 'Amount Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->amountTypeList(),
                'value'=>0,
                'validation'=>"in:".$this->amountTypeKeys()
            ],
            [
                'type'=>'select',
                'name'=>'amount_category_id',
                'label' => 'Amount Category',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 punch-user',
                'options'=>$this->amountCategoryList(),
                'value'=>0,
                'validation'=>"in:".$this->amountCategoryKeys()
            ],
            [
                'type'=>'text',
                'name'=>'from_date',
                'label' => 'From Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null
            ],
            [
                'type'=>'text',
                'name'=>'to_date',
                'label' => 'To Date',
                'others'=>['class'=>'form-control','data-date-format'=>"yyyy-mm-dd"],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'value'=>null
            ]
        ];
    }
}
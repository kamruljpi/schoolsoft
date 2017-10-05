<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 6/8/16
 * Time: 12:53 PM
 */

namespace Erp\Forms;


use Erp\Models\Site\SiteMembership;

class SiteMemebershipForm extends SiteMembership implements FormInterface
{
    use FormControll;

    public function formInputFields($id = null, $mode = null)
    {
        return [

            [
                'type'=>'text',
                'name'=>self::MEMBERSHIP_NAME,
                'label' => 'Institution Membership Name',
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
                'type'=>'select',
                'name'=>self::PAYMENT_TYPE,
                'label' => 'Payment Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[0=>'select','fixed'=>'fixed','per-student'=>'per student'],
                'value'=>0,
                'validation'=>"required|in:fixed,per-student"
            ],

            [
                'type'=>'hidden',
                'name'=>self::PAYMENT_TYPE_DURATION,
                'label' => 'Payment Type Duration',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[0=>'select','monthly'=>'monthly','yearly'=>'yearly'],
                'value'=>0,

            ],
            [
                'type'=>'text',
                'name'=>self::PAYMENT_AMOUNT,
                'label' => 'Payment Amount',
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
                'type'=>'select',
                'name'=>self::PAYMENT_INSTALLMENT,
                'label' => 'Payment Installment',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[
                    0=>'select',
                    1=>'1 month',
                    2=>'2 months',
                    3=>'3 months',
                    4=>'4 months',
                    6=>'6 months',
                    12=>'12 months',
                ],
                'value'=>0,
                'validation'=>"required|in:1,2,3,4,6,12"

            ],
            [
                'type'=>'radio',
                'name'=>self::LATE_PAYMENT_MEMBERSHIP_STATUS,
                'label' => 'Late Payment Membership Status',
                'radval'=> [true=>'Active',false=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 late_payment_membership_status',
                'others'=>[
                    'class'=>'form-control ',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'number',
                'name'=>self::LATE_PAYMENT_MEMBERSHIP_DAYS,
                'label' => 'Late Payment Membership Days',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 late_payment',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::LATE_FEE,
                'label' => 'Late Fee',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required"

            ],
            [
                'type'=>'radio',
                'name'=>self::ALUMNI_LOGIN,
                'label' => 'Alumni Login Status',
                'radval'=> [true=>'Active',false=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 alumni_login_status',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::ALUMNI_FEE,
                'label' => 'Alumni Fee',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 alumni_fee',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],

            ],
            [
                'type'=>'select',
                'name'=>self::DISCOUNT_TYPE,
                'label' => 'Discount Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>[
                    0=>'select',
                    'fixed'=>'fixed',
                    'percent'=>'percent'
                ],
                'value'=>0,
                'validation'=>"required|in:fixed,percent"

            ],
            [
                'type'=>'text',
                'name'=>self::DISCOUNT,
                'label' => 'Discount Amount',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required"

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
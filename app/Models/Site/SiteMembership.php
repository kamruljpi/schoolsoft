<?php

namespace Erp\Models\Site;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SiteMembership extends Model
{
    use SoftDeletes;

    public $timestamps = false;
    protected $dates = ['deleted_at'];

    const MEMBERSHIP_NAME  = 'name';
    const PAYMENT_TYPE  = 'payment_type';
    const PAYMENT_TYPE_DURATION  = 'payment_type_duration';
    const PAYMENT_AMOUNT  = 'payment_amount';
    const PAYMENT_INSTALLMENT  = 'payment_installment';
    const LATE_PAYMENT_MEMBERSHIP_STATUS  = 'late_payment_membership_status';
    const LATE_PAYMENT_MEMBERSHIP_DAYS  = 'late_payment_membership_days';
    const LATE_FEE  = 'late_fee';
    const ALUMNI_LOGIN  = 'alumni_login';
    const ALUMNI_FEE  = 'alumni_fee';
    const DISCOUNT_TYPE  = 'discount_type';
    const DISCOUNT  = 'discount';
    const STATUS  = 'status';

    protected $fillable =[

        self::MEMBERSHIP_NAME,
        self::PAYMENT_TYPE,
        self::PAYMENT_TYPE_DURATION,
        self::PAYMENT_AMOUNT,
        self::PAYMENT_INSTALLMENT,
        self::LATE_PAYMENT_MEMBERSHIP_STATUS,
        self::LATE_PAYMENT_MEMBERSHIP_DAYS,
        self::LATE_FEE,
        self::ALUMNI_LOGIN,
        self::ALUMNI_FEE,
        self::DISCOUNT_TYPE,
        self::DISCOUNT,
        self::STATUS,
    ];
}

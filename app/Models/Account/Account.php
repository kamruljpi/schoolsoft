<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/22/2016
 * Time: 12:37 PM
 */

namespace Erp\Models\Account;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Account\AccountType;
use Erp\Models\Amount\AmountType;
use Erp\Models\Amount\AmountCategory;
use Erp\Models\User\User;
use Erp\Models\Role\Role;
use Erp\Models\Site\SiteInfo;

class Account extends ProjectModel
{
    use SoftDeletes, Translatable;

    const RECEIPT_NO = 'receipt_no';
    const TO_ROLE_ID = 'to_role_id';
    const TO_USER_ID = 'to_user_id';
    const FROM_ROLE_ID = 'from_role_id';
    const FROM_USER_ID = 'from_user_id';
    const ACCOUNT_TYPE_ID = 'account_type_id';
    const AMOUNT_TYPE_ID = 'amount_type_id';
    const AMOUNT_CATEGORY_ID = 'amount_category_id';
    const AMOUNT = 'amount';
    const ACCOUNT = 'account_name';
    const ACCOUNT_DESCRIPTION = 'account_description';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'accounts';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::TO_ROLE_ID,
        self::TO_USER_ID,
        self::FROM_ROLE_ID,
        self::FROM_USER_ID,
        self::ACCOUNT_TYPE_ID,
        self::AMOUNT_TYPE_ID,
        self::AMOUNT_CATEGORY_ID,
        self::AMOUNT,
        self::ACCOUNT,
        self::ACCOUNT_DESCRIPTION,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::ACCOUNT,
        self::ACCOUNT_DESCRIPTION
    ];


    public function accountType()
    {
        return $this->belongsTo(AccountType::class);
    }

    public function amountType()
    {
        return $this->belongsTo(AmountType::class);
    }

    public function amountCategory()
    {
        return $this->belongsTo(AmountCategory::class);
    }

    public function toUser()
    {
        return $this->belongsTo(User::class, 'to_user_id');
    }

    public function fromUser()
    {
        return $this->belongsTo(User::class, 'from_user_id');
    }

    public function toRole()
    {
        return $this->belongsTo(Role::class, 'to_role_id');
    }

    public function fromRole()
    {
        return $this->belongsTo(Role::class, 'from_role_id');
    }

    public function siteInfo()
    {
        return $this->belongsTo(SiteInfo::class, 'site_id');
    }
}
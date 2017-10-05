<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/18/2016
 * Time: 2:23 PM
 */
namespace Erp\Models\Account;

use Erp\Models\Account\Account;
use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class AccountType extends ProjectModel
{
    use SoftDeletes, Translatable;

    const ACCOUNT_TYPE = 'account_type_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'account_types';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::ACCOUNT_TYPE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::ACCOUNT_TYPE
    ];

    public function accountsOfAccountType()
    {
        return $this->hasMany(Account::class);
    }
}
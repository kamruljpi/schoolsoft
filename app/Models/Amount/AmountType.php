<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/18/2016
 * Time: 4:28 PM
 */
namespace Erp\Models\Amount;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Account\Account;

class AmountType extends ProjectModel
{
    use SoftDeletes, Translatable;

    const AMOUNT_TYPE = 'amount_type_name';
    const STATUS = 'status';
    const ALIAS = 'alias';

    public $timestamps = false;

    protected $table = 'amount_types';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::AMOUNT_TYPE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::AMOUNT_TYPE
    ];

    public function accountsOfAmountType()
    {
        return $this->hasMany(Account::class);
    }
}
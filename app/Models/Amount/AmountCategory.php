<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/18/2016
 * Time: 5:47 PM
 */

namespace Erp\Models\Amount;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Account\Account;

class AmountCategory extends ProjectModel
{
    use SoftDeletes, Translatable;

    const AMOUNT_CATEGORY = 'amount_category_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'amount_categories';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::AMOUNT_CATEGORY,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::AMOUNT_CATEGORY
    ];

    public function accountsOfAmountCategory()
    {
        return $this->hasMany(Account::class);
    }
}
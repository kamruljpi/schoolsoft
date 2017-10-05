<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 5/18/2016
 * Time: 2:43 PM
 */

namespace Erp\Models\Account;


use Erp\Models\ProjectModel;

class AccountTypeTranslation extends ProjectModel
{
    const ACCOUNT_TYPE = 'account_type_name';
    public $timestamps = false;

    protected $fillable = [
        self::ACCOUNT_TYPE
    ];
}
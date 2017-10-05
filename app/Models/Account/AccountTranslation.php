<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/22/2016
 * Time: 12:59 PM
 */

namespace Erp\Models\Account;


use Erp\Models\ProjectModel;

class AccountTranslation extends ProjectModel
{
    const ACCOUNT = 'account_name';
    const ACCOUNT_DESCRIPTION = 'account_description';
    public $timestamps = false;

    protected $fillable = [
        self::ACCOUNT,
        self::ACCOUNT_DESCRIPTION
    ];
}
<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 5/18/2016
 * Time: 4:33 PM
 */

namespace Erp\Models\Amount;


use Erp\Models\ProjectModel;

class AmountTypeTranslation extends ProjectModel
{
    const AMOUNT_TYPE = 'amount_type_name';
    public $timestamps = false;

    protected $fillable = [
        self::AMOUNT_TYPE
    ];
}
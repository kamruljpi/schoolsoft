<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/18/2016
 * Time: 5:50 PM
 */

namespace Erp\Models\Amount;


use Erp\Models\ProjectModel;

class AmountCategoryTranslation extends ProjectModel
{
    const AMOUNT_CATEGORY = 'amount_category_name';
    public $timestamps = false;

    protected $fillable = [
        self::AMOUNT_CATEGORY
    ];
}
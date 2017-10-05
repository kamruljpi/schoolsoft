<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 6/9/2016
 * Time: 10:14 AM
 */

namespace Erp\Models\BusinessType;


use Erp\Models\ProjectModel;

class BusinessTypeTranslation extends ProjectModel
{
    const BUSINESS_TYPE = 'business_type_name';

    public $timestamps = false;

    protected $fillable = [
        self::BUSINESS_TYPE
    ];
}
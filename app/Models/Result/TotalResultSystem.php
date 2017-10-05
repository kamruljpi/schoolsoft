<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 9/4/2016
 * Time: 4:48 PM
 */

namespace Erp\Models\Result;


use Erp\Models\ProjectModel;
use Erp\Models\Student\StudentClass;

class TotalResultSystem extends ProjectModel
{
    const NAME = 'name';
    const RESULT_RULE = 'result_rule';
    const SETTING_IDS = 'setting_ids';
    const STATUS = 'status';

    public $timestamps = false;
    protected $fillable = [
        self::NAME,
        self::RESULT_RULE,
        self::SETTING_IDS,
        self::STATUS
    ];
}
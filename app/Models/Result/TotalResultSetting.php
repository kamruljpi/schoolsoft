<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 9/4/2016
 * Time: 4:46 PM
 */

namespace Erp\Models\Result;


use Erp\Models\ProjectModel;

class TotalResultSetting extends ProjectModel
{
    const SETTINGS = 'settings';


    public $timestamps = false;
    protected $fillable = [
        self::SETTINGS
    ];
}
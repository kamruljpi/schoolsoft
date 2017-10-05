<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/19/2016
 * Time: 2:12 PM
 */

namespace Erp\Models\EducationLevel;


use Erp\Models\ProjectModel;

class EducationLevelTranslation extends ProjectModel
{
    const EDUCATION_LEVEL = 'education_level_name';

    public $timestamps = false;

    protected $fillable = [
        self::EDUCATION_LEVEL
    ];
}
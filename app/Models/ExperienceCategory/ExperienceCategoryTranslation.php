<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 11:36 AM
 */

namespace Erp\Models\ExperienceCategory;


use Erp\Models\ProjectModel;

class ExperienceCategoryTranslation extends ProjectModel
{
    const EXPERIENCE_CATEGORY = 'experience_category_name';

    public $timestamps = false;

    protected $fillable = [
        self::EXPERIENCE_CATEGORY
    ];
}
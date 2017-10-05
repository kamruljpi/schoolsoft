<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 6/9/2016
 * Time: 2:58 PM
 */

namespace Erp\Models\SkillCategory;


use Erp\Models\ProjectModel;

class SkillCategoryTranslation extends ProjectModel
{
    const SKILL_CATEGORY = 'skill_category_name';

    public $timestamps = false;

    protected $fillable = [
        self::SKILL_CATEGORY
    ];
}
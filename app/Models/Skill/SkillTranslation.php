<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 3:45 PM
 */

namespace Erp\Models\Skill;


use Erp\Models\ProjectModel;

class SkillTranslation extends ProjectModel
{
    const SKILL = 'skill_name';

    public $timestamps = false;

    protected $fillable = [
        self::SKILL
    ];
}
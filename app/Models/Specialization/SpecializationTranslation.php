<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/13/2016
 * Time: 10:13 AM
 */

namespace Erp\Models\Specialization;


use Erp\Models\ProjectModel;

class SpecializationTranslation extends ProjectModel
{
    const SKILL_DESCRIPTION = 'skill_description';
    const EXTRACURRICULAR_ACTIVITIES = 'extracurricular_activities';

    public $timestamps = false;

    protected $fillable = [
        self::SKILL_DESCRIPTION,
        self::EXTRACURRICULAR_ACTIVITIES
    ];
}
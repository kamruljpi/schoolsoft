<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 4:14 PM
 */
namespace Erp\Models\Specialization;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Skill\Skill;
use Erp\Models\SkillCategory\SkillCategory;

class Specialization extends ProjectModel
{
    use SoftDeletes, Translatable;


    const USER = 'user_id';
    const SKILL_CATEGORY = 'skill_category_id';
    const SKILLS = 'skills';
    const SKILL_DESCRIPTION = 'skill_description';
    const EXTRACURRICULAR_ACTIVITIES = 'extracurricular_activities';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'specializations';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::SKILL_CATEGORY,
        self::SKILLS,
        self::SKILL_DESCRIPTION,
        self::EXTRACURRICULAR_ACTIVITIES,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::SKILL_DESCRIPTION,
        self::EXTRACURRICULAR_ACTIVITIES
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function specializationOfSkillCategory()
    {
        return $this->belongsTo(SkillCategory::class, 'skill_category_id');
    }
}
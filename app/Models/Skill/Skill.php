<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 3:42 PM
 */
namespace Erp\Models\Skill;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\SkillCategory\SkillCategory;
//use Erp\Models\Specialization\Specialization;

class Skill extends ProjectModel
{
    use SoftDeletes, Translatable;


    const SKILL = 'skill_name';
    const SKILL_CATEGORY = 'skill_category_id';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'skills';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::SKILL,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::SKILL
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function skillCategory()
    {
        return $this->belongsTo(SkillCategory::class);
    }
}
<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 2:55 PM
 */
namespace Erp\Models\SkillCategory;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Skill\Skill;
use Erp\Models\Specialization\Specialization;

class SkillCategory extends ProjectModel
{
    use SoftDeletes, Translatable;


    const SKILL_CATEGORY = 'skill_category_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'skill_categories';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::SKILL_CATEGORY,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::SKILL_CATEGORY
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function skills()
    {
        return $this->hasMany(Skill::class, 'skill_category_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function specializations()
    {
        return $this->hasMany(Specialization::class, 'skill_category_id');
    }
}
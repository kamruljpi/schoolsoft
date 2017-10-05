<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 12:41 PM
 */
namespace Erp\Models\Experience;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\ExperienceCategory\ExperienceCategory;

class Experience extends ProjectModel
{
    use SoftDeletes, Translatable;


    const EXPERIENCE = 'experience_name';
    const EXPERIENCE_CATEGORY = 'experience_category_id';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'experiences';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::EXPERIENCE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::EXPERIENCE
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function experienceCategory()
    {
        return $this->belongsTo(ExperienceCategory::class);
    }
}
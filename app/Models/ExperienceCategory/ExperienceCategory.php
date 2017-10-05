<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 11:33 AM
 */
namespace Erp\Models\ExperienceCategory;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Experience\Experience;
use Erp\Models\EmploymentHistory\EmploymentHistory;

class ExperienceCategory extends ProjectModel
{
    use SoftDeletes, Translatable;


    const EXPERIENCE_CATEGORY = 'experience_category_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'experience_categories';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::EXPERIENCE_CATEGORY,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::EXPERIENCE_CATEGORY
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function experiences()
    {
        return $this->hasMany(Experience::class, 'experience_category_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function employmentHistories()
    {
        return $this->hasMany(EmploymentHistory::class);
    }
}
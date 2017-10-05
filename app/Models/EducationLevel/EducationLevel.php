<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/19/2016
 * Time: 2:06 PM
 */
namespace Erp\Models\EducationLevel;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\AcademicQualification\AcademicQualification;

class EducationLevel extends ProjectModel
{
    use SoftDeletes, Translatable;

    const EDUCATION_LEVEL = 'education_level_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'education_levels';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::EDUCATION_LEVEL,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::EDUCATION_LEVEL
    ];

    public function academicQualifications()
    {
        return $this->hasMany(AcademicQualification::class);
    }
}
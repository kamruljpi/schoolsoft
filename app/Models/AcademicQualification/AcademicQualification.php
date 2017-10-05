<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/19/2016
 * Time: 3:44 PM
 */
namespace Erp\Models\AcademicQualification;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\EducationLevel\EducationLevel;

class AcademicQualification extends ProjectModel
{
    use SoftDeletes, Translatable;


    const USER = 'user_id';
    const EDUCATION_LEVEL = 'education_level_id';
    const DEGREE_TITLE = 'degree_title';
    const MAJOR = 'major';
    const INSTITUTE_NAME = 'institute_name';
    const RESULT = 'result';
    const ACHIEVEMENT = 'achievement';
    const YEAR_OF_PASSING = 'year_of_passing';
    const DURATION = 'duration';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'academic_qualifications';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::EDUCATION_LEVEL,
        self::DEGREE_TITLE,
        self::MAJOR,
        self::INSTITUTE_NAME,
        self::RESULT,
        self::ACHIEVEMENT,
        self::YEAR_OF_PASSING,
        self::DURATION,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::DEGREE_TITLE,
        self::MAJOR,
        self::INSTITUTE_NAME,
        self::RESULT,
        self::ACHIEVEMENT
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function academicQualificationOfEducationLevel()
    {
        return $this->belongsTo(EducationLevel::class, 'education_level_id');
    }
}
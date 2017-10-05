<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/19/2016
 * Time: 3:50 PM
 */

namespace Erp\Models\AcademicQualification;


use Erp\Models\ProjectModel;

class AcademicQualificationTranslation extends ProjectModel
{
    const DEGREE_TITLE = 'degree_title';
    const MAJOR = 'major';
    const INSTITUTE_NAME = 'institute_name';
    const RESULT = 'result';
    const ACHIEVEMENT = 'achievement';

    public $timestamps = false;

    protected $fillable = [
        self::DEGREE_TITLE,
        self::MAJOR,
        self::INSTITUTE_NAME,
        self::RESULT,
        self::ACHIEVEMENT
    ];
}
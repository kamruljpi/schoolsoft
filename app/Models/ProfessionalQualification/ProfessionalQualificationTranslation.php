<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 2:43 PM
 */

namespace Erp\Models\ProfessionalQualification;


use Erp\Models\ProjectModel;

class ProfessionalQualificationTranslation extends ProjectModel
{
    const CERTIFICATION = 'certification';
    const INSTITUTE = 'institute_name';
    const LOCATION = 'location';

    public $timestamps = false;

    protected $fillable = [
        self::CERTIFICATION,
        self::INSTITUTE,
        self::LOCATION
    ];
}
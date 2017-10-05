<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 2:34 PM
 */
namespace Erp\Models\ProfessionalQualification;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\User\User;

class ProfessionalQualification extends ProjectModel
{
    use SoftDeletes, Translatable;

    const USER = 'user_id';
    const CERTIFICATION = 'certification';
    const INSTITUTE = 'institute_name';
    const LOCATION = 'location';
    const FROM_DATE = 'from_date';
    const TO_DATE = 'to_date';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'professional_qualifications';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::CERTIFICATION,
        self::INSTITUTE,
        self::LOCATION,
        self::FROM_DATE,
        self::TO_DATE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::CERTIFICATION,
        self::INSTITUTE,
        self::LOCATION
    ];

    // ProfessionalQualification belongsTo User
    public function professionalQualificationOfUser()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 2:48 PM
 */
namespace Erp\Models\EmploymentHistory;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\ExperienceCategory\ExperienceCategory;
use Erp\Models\BusinessType\BusinessType;

class EmploymentHistory extends ProjectModel
{
    use SoftDeletes, Translatable;


    const USER = 'user_id';
    const BUSINESS_TYPE = 'business_type_id';
    const COMPANY_NAME = 'company_name';
    const COMPANY_LOCATION = 'company_location';
    const POSITION_HELD = 'position_held';
    const DEPARTMENT = 'department';
    const RESPONSIBILITES = 'responsibilites';
    const FROM_DATE = 'from_date';
    const TO_DATE = 'to_date';
    const CURRENTLY_WORKING = 'currently_working';
    const EXPERIENCE_CATEGORY = 'experience_category_id';
    const EXPERIENCE_ALL = 'experience_all';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'employment_histories';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::BUSINESS_TYPE,
        self::COMPANY_NAME,
        self::COMPANY_LOCATION,
        self::POSITION_HELD,
        self::DEPARTMENT,
        self::RESPONSIBILITES,
        self::FROM_DATE,
        self::TO_DATE,
        self::CURRENTLY_WORKING,
        self::EXPERIENCE_CATEGORY,
        self::EXPERIENCE_ALL,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::COMPANY_NAME,
        self::COMPANY_LOCATION,
        self::POSITION_HELD,
        self::DEPARTMENT,
        self::RESPONSIBILITES
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function employmentHistoryOfBusinessType()
    {
        return $this->belongsTo(BusinessType::class, 'business_type_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function employmentHistoryOfExperienceCategory()
    {
        return $this->belongsTo(ExperienceCategory::class, 'experience_category_id');
    }
}
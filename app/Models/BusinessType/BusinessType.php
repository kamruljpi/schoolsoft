<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 10:09 AM
 */
namespace Erp\Models\BusinessType;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\EmploymentHistory\EmploymentHistory;

class BusinessType extends ProjectModel
{
    use SoftDeletes, Translatable;


    const BUSINESS_TYPE = 'business_type_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'business_types';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::BUSINESS_TYPE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::BUSINESS_TYPE
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function employmentHistories()
    {
        return $this->hasMany(EmploymentHistory::class);
    }
}
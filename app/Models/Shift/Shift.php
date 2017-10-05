<?php

namespace Erp\Models\Shift;

use Dimsav\Translatable\Translatable;
use Erp\Models\Department\Department;
use Erp\Models\ProjectModel;
use Erp\Models\Status\Status;
use Erp\Models\User\User;
use Erp\Models\User\EmployeeHistory;
use Illuminate\Database\Eloquent\Model;

class Shift extends ProjectModel
{
    use Translatable;
    const NAME = 'name';
    const SAT_IN = 'sat_in';
    const SAT_OUT = 'sat_out';
    const SUN_IN = 'sun_in';
    const SUN_OUT = 'sun_out';
    const MON_IN = 'mon_in';
    const MON_OUT = 'mon_out';
    const TUES_IN = 'tues_in';
    const TUES_OUT = 'tues_out';
    const WED_IN = 'wed_in';
    const WED_OUT = 'wed_out';
    const THURS_IN = 'thurs_in';
    const THURS_OUT = 'thurs_out';
    const FRI_IN = 'fri_in';
    const FRI_OUT = 'fri_out';
    const STATUS ='status_id';
    const POSITION = 'position';
    const DEPARTMENT = 'department_id';

    public $timestamps = false;

    public $translatedAttributes = [self::NAME];

    protected $fillable = [
        self::NAME,
        self::SAT_IN,
        self::SAT_OUT,
        self::SUN_IN,
        self::SUN_OUT,
        self::MON_IN,
        self::MON_OUT,
        self::TUES_IN,
        self::TUES_OUT,
        self::THURS_IN,
        self::THURS_OUT,
        self::FRI_IN,
        self::FRI_OUT,
        self::POSITION
    ];
    public $ownFields = [
        self::SAT_IN,
        self::SAT_OUT,
        self::SUN_IN,
        self::SUN_OUT,
        self::MON_IN,
        self::MON_OUT,
        self::TUES_IN,
        self::TUES_OUT,
        self::WED_IN,
        self::WED_OUT,
        self::THURS_IN,
        self::THURS_OUT,
        self::FRI_IN,
        self::FRI_OUT,
        self::STATUS
    ];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function status()
    {
        return $this->belongsTo(Status::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function departments()
    {
        return $this->belongsToMany(Department::class);
    }

    public function users()
    {
        return $this->hasMany(User::class);
    }
}

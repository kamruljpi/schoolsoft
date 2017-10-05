<?php

namespace Erp\Models\Punch;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class Punch extends ProjectModel
{

    public $timestamps = false;

    const USER = 'user_id';
    const PUNCH_IN = 'punch_in';
    const PUNCH_OUT = 'punch_out';
    const PUNCH_DATE = 'punch_date';
    const PUNCH_IN_DATE_TIME = 'punch_in_date_time';
    const PUNCH_OUT_DATE_TIME = 'punch_out_date_time';
    const PUNCH_YEAR = 'punch_year';
    const PUNCH_MONTH = 'punch_month';
    const PUNCH_DAY = 'punch_day';
    const PUNCH_FLAG = 'punch_flag';
    const OVERTIME = 'is_overtime';
    const WORKING_HOURS = 'working_hours';
    const PUNCH_DATE_TIME = 'punch_date_time';
    const PUNCH_USER = 'punch_user';
    const DEVICE_DATA = 'device_data';
    const EMPLOYEE_ID = 'employee_id';


    protected $fillable = [
        self::USER,
        self::PUNCH_IN,
        self::PUNCH_OUT,
        self::PUNCH_DATE,
        self::PUNCH_IN_DATE_TIME,
        self::PUNCH_OUT_DATE_TIME,
        self::PUNCH_YEAR,
        self::PUNCH_MONTH,
        self::PUNCH_DAY,
        self::PUNCH_FLAG,
        self::OVERTIME,
        self::WORKING_HOURS,
        self::PUNCH_DATE_TIME,
        self::EMPLOYEE_ID
    ];

    public $fieldsForTimesheetReport = [

        self::PUNCH_YEAR,
        self::PUNCH_MONTH
    ];
}

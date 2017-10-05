<?php

namespace Erp\Models\Attendance;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class StudentAttendance extends ProjectModel
{

    const USER = 'user_id';
    const ROLL_NO = 'roll_no';
    const PRESENT_TYPE = 'present_type';
    const PRESENT_TYPE_ID = 'present_type_id';
    const IN_TIME = 'in_time';
    const OUT_TIME = 'out_time';
    const ATTENDANCE_DATE = 'present_date';
    const ATTENDANCE_DATE_TIME = 'present_date_time';
    const ATTENDANCE_YEAR = 'present_year';
    const ATTENDANCE_MONTH = 'present_month';
    const ATTENDANCE_DAY = 'present_day';

    const STUDENT_CLASS = 'student_class';
    const SECTION = 'section';
    const SUBJECT = 'subject';

    public $timestamps = false;

    protected $fillable = [
        self::USER,
        self::ROLL_NO,
        self::PRESENT_TYPE,
        self::PRESENT_TYPE_ID,
        self::IN_TIME,
        self::OUT_TIME,
        self::ATTENDANCE_DATE,
        self::ATTENDANCE_YEAR,
        self::ATTENDANCE_MONTH,
        self::ATTENDANCE_DAY,
        self::ATTENDANCE_DATE_TIME
    ];


}

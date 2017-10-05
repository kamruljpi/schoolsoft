<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/3/2016
 * Time: 2:55 PM
 */
namespace Erp\Models\Routine;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Student\StudentClass;
use Erp\Models\Student\Section;
use Erp\Models\Subject\Subject;
use Erp\Models\User\User;
use Erp\Models\Building\Building;
use Erp\Models\Floor\Floor;
use Erp\Models\Room\Room;


class Routine extends ProjectModel
{
    use SoftDeletes;

    const STUDENT_CLASS = 'student_class_id';
    const SECTION = 'section_id';
    const SUBJECT = 'subject_id';
    const TEACHER = 'user_id';
    const BUILDING = 'building_id';
    const FLOOR = 'floor_id';
    const ROOM = 'room_id';
    const START_TIME = 'class_start_time';
    const END_TIME = 'class_end_time';
    const STATUS = 'status';
    const WEEKDAY = 'weekday';
    const COORDINATOR = 'coordinator_id';

    public $timestamps = false;
    protected $table = 'routines';

    protected $fillable = [
        self::STUDENT_CLASS,
        self::SECTION,
        self::SUBJECT,
        self::TEACHER,
        self::BUILDING,
        self::FLOOR,
        self::ROOM,
        self::START_TIME,
        self::END_TIME,
        self::WEEKDAY,
        self::COORDINATOR,
        self::CREATED_AT,
        self::UPDATED_AT,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    // Routine belongsTo StudentClass
    public function studentClass()
    {
        return $this->belongsTo(StudentClass::class);
    }

    // Routine belongsTo Section
    public function section()
    {
        return $this->belongsTo(Section::class);
    }

    // Routine belongsTo Subject
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    // Routine belongsTo Building
    public function building()
    {
        return $this->belongsTo(Building::class);
    }

    // Routine belongsTo Floor
    public function floor()
    {
        return $this->belongsTo(Floor::class);
    }

    // Routine belongsTo Room
    public function room()
    {
        return $this->belongsTo(Room::class);
    }

    // Routine belongsTo Teacher
    public function teacher()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    // Routine belongsTo Coordinator
    public function coordinator()
    {
        return $this->belongsTo(User::class, 'coordinator_id');
    }



}
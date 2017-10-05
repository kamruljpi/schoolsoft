<?php
/**
 * Created by PhpStorm.
 * User: tiash
 * Date: 5/4/2016
 * Time: 2:32 PM
 */

namespace Erp\Models\Examinations;


use Erp\Models\Examinations\Examination;
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

class ExaminationSchedule extends ProjectModel
{
    use SoftDeletes;

    const EXAMINATION = 'examination_id';
    const STUDENT_CLASS = 'student_class_id';
    const SECTION = 'section_id';
    const SUBJECT = 'subject_id';
    const EXAMINATION_DATE = 'examination_date';
    const EXAMINATION_START_TIME = 'start_time';
    const EXAMINATION_END_TIME = 'end_time';
    const BUILDING = 'building_id';
    const FLOOR = 'floor_id';
    const ROOM = 'room_id';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'examination_schedules';

    protected $fillable = [
        self::EXAMINATION,
        self::STUDENT_CLASS,
        self::SECTION,
        self::SUBJECT,
        self::EXAMINATION_DATE,
        self::EXAMINATION_START_TIME,
        self::EXAMINATION_END_TIME,
        self::BUILDING,
        self::FLOOR,
        self::ROOM,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    // ExaminationSchedule belongsTo Examination
    public function examination()
    {
        return $this->belongsTo(Examination::class);
    }

    // ExaminationSchedule belongsTo StudentClass
    public function studentClass()
    {
        return $this->belongsTo(StudentClass::class);
    }

    // ExaminationSchedule belongsTo Section
    public function section()
    {
        return $this->belongsTo(Section::class);
    }

    // ExaminationSchedule belongsTo Subject
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }

    // ExaminationSchedule belongsTo Building
    public function building()
    {
        return $this->belongsTo(Building::class);
    }

    // ExaminationSchedule belongsTo Floor
    public function floor()
    {
        return $this->belongsTo(Floor::class);
    }

    // ExaminationSchedule belongsTo Room
    public function room()
    {
        return $this->belongsTo(Room::class);
    }
}
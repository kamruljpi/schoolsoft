<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/30/2016
 * Time: 3:29 PM
 */
namespace Erp\Models\Subject;

use Erp\Models\Marks\Marks;
use Erp\Models\ProjectModel;
use Erp\Models\User\User;
use Erp\Models\Student\StudentClass;
use Erp\Models\Result\ResultSystem;
use Erp\Models\Routine\Routine;
use Illuminate\Database\Eloquent\Model;
use Erp\Models\Examinations\ExaminationSchedule;

class Subject extends ProjectModel
{
    const STUDENT_CLASS = 'student_class_id';
    const TEACHER = 'user_id';
    const SUBJECT_NAME = 'subject_name';
    const SUBJECT_MARK_TYPE = 'subject_marks_type';
    const SUBJECT_TOTAL_MARKS = 'subject_total_marks';
    const SUBJECT_AUTHOR = 'subject_author';
    const SUBJECT_CODE = 'subject_code';
    const SUBJECT_CREDIT = 'subject_credit';
    const RESULT_SYSTEM = 'result_system_id';
    const SUBJECT_TYPEINFO = 'marks_type_info';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'subjects';

    protected $fillable = [
        self::STUDENT_CLASS,
        self::TEACHER,
        self::SUBJECT_NAME,
        self::SUBJECT_MARK_TYPE,
        self::SUBJECT_TOTAL_MARKS,
        self::SUBJECT_AUTHOR,
        self::SUBJECT_CODE,
        self::SUBJECT_CREDIT,
        self::SUBJECT_TYPEINFO,
        self::STATUS,
        self::RESULT_SYSTEM
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function studentClass()
    {
        return $this->belongsTo(StudentClass::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function users()
    {
        return $this->hasMany(User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function classTeacher()
    {
        return $this->belongsTo(User::class,'user_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function resultSystem()
    {
        return $this->belongsTo(ResultSystem::class);
    }

    // Subject hasMany Routines
    public function routines()
    {
        return $this->hasMany(Routine::class);
    }

    // Subject hasMany ExaminationSchedule
    public function examinationSchedules()
    {
        return $this->hasMany(ExaminationSchedule::class);
    }

    public function marks()
    {
        return $this->hasMany(Marks::class);
    }
}
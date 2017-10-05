<?php

namespace Erp\Models\Student;


use Erp\Models\ProjectModel;
use Erp\Models\User\User;
use Erp\Models\Routine\Routine;
use Erp\Models\Student\StudentClass;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Examinations\ExaminationSchedule;

class Section extends ProjectModel
{
    use SoftDeletes;

    const SECTION ='section_name';
    const STUDENT_CLASS = 'student_class_id';
    const TEACHER = 'user_id';
    const MERIT_LEVEL = 'merit_level';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'sections';
    protected $fillable = [
        self::SECTION,
        self::STUDENT_CLASS,
        self::TEACHER,
        self::MERIT_LEVEL,
        self::STATUS
    ];

    public $ownFields = [
        self::SECTION,
        self::STUDENT_CLASS,
        self::TEACHER,
        self::MERIT_LEVEL,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

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

    // Section hasMany Routines
    public function routines()
    {
        return $this->hasMany(Routine::class);
    }

    // Section hasMany ExaminationSchedule
    public function examinationSchedules()
    {
        return $this->hasMany(ExaminationSchedule::class);
    }

}

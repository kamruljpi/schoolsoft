<?php

namespace Erp\Models\Student;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class StudentHistory extends ProjectModel
{
    const DEPARTMENT = 'department_id';
    const STUDENT_CLASS = 'student_class_id';
    const SECTION = 'section_id';
    const ROLL_NO = 'roll_no';
    const GUARDIAN = 'guardian_id';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    public $timestamps = false;

    protected $fillable = [
        self::DEPARTMENT,
        self::STUDENT_CLASS,
        self::SECTION,
        self::ROLL_NO,
        self::GUARDIAN,
        self::CREATED_AT,
        self::UPDATED_AT
    ];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }
    
}

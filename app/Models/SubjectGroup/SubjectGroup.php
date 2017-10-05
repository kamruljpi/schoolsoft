<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 8/30/2016
 * Time: 11:48 AM
 */
namespace Erp\Models\SubjectGroup;

use Erp\Models\ProjectModel;
use Erp\Models\Student\StudentClass;
use Erp\Models\Subject\Subject;
use Illuminate\Database\Eloquent\SoftDeletes;

class SubjectGroup extends ProjectModel
{
    use SoftDeletes;

    const SUBJECT_GROUP_NAME = 'subject_group_name';
    const STUDENT_CLASS = 'student_class_id';
    const SUBJECT_IDS = 'subject_ids';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'subject_groups';

    protected $fillable = [
        self::SUBJECT_GROUP_NAME,
        self::STUDENT_CLASS,
        self::SUBJECT_IDS,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function classOfSubjectGroup()
    {
        return $this->belongsTo(StudentClass::class, 'student_class_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
/*    public function subjectOfSubjectClass()
    {
        return $this->hasMany(Subject::class, '');
    }*/

}
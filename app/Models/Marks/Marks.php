<?php

namespace Erp\Models\Marks;

use Erp\Models\ProjectModel;
use Erp\Models\User\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Marks extends ProjectModel
{

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public $timestamps = false;

    const EXAM = 'examination_id';
    const STUDENT_CLASS ='student_class_id';
    const SECTION ='section_id';
    const SUBJECT = 'subject_id';
    const MARK_TYPES = 'mark_types';
    const TOTAL = 'total';
    const STATUS = 'status';



    protected $fillable = [
        self::EXAM,
        self::STUDENT_CLASS,
        self::SECTION,
        self::SUBJECT,
        self::MARK_TYPES,
        self::TOTAL,
        self::STATUS
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }



}

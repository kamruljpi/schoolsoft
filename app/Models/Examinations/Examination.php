<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/4/2016
 * Time: 2:22 PM
 */
namespace Erp\Models\Examinations;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Examinations\ExaminationSchedule;

class Examination extends ProjectModel
{
    use SoftDeletes;

    const EXAMINATION_NAME = 'examination_name';
    const EXAMINATION_DATE = 'examination_date';
    const EXAMINATION_NOTE = 'examination_note';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'examinations';

    protected $fillable = [
        self::EXAMINATION_NAME,
        self::EXAMINATION_DATE,
        self::EXAMINATION_NOTE,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    // Examination hasMany ExaminationSchedule
    public function examinationSchedules()
    {
        return $this->hasMany(ExaminationSchedule::class);
    }
}
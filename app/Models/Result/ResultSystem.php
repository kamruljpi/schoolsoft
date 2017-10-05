<?php

namespace Erp\Models\Result;

use Erp\Models\ProjectModel;
use Erp\Models\Status\Status;
use Erp\Models\Student\StudentClass;
use Illuminate\Database\Eloquent\Model;

class ResultSystem extends ProjectModel
{
    const NAME = 'name';
    const RESULT_RULE = 'result_rule';
    const SETTING_IDS = 'setting_ids';
    const STATUS = 'status_id';

    public $timestamps = false;
    protected $fillable = [
        self::NAME,
        self::RESULT_RULE,
        self::SETTING_IDS,
        self::STATUS
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function status()
    {
        return $this->belongsTo(Status::class);
    }

    public function studentClass()
    {
        return $this->hasMany(StudentClass::class);
    }

}

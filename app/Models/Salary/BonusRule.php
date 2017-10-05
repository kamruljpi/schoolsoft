<?php

namespace Erp\Models\Salary;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class BonusRule extends ProjectModel
{
    const NAME = 'name';
    const RULES = 'rules';
    const AMOUNT = 'amount';
    const AMOUNT_TYPE = 'amount_type';
    const SALARY_TYPE = 'salary_types';
    const STATUS = 'status';
    const POSITION = 'position';

    public $timestamps = false;
    protected $fillable = [
        self::NAME,
        self::RULES,
        self::STATUS,
        self::POSITION
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function status()
    {
        return $this->belongsTo(Status::class);
    }
}

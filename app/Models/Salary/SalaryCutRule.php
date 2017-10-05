<?php

namespace Erp\Models\Salary;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class SalaryCutRule extends ProjectModel
{

    const NAME = 'name';
    const SALARY_TYPES = 'salary_types';
    const AMOUNT = 'amount';
    const AMOUNT_TYPE = 'amount_type';
    const STATUS = 'status';
    const POSITION = 'position';

    public $timestamps = false;
    protected $fillable = [
        self::NAME,
        self::SALARY_TYPES,
        self::AMOUNT,
        self::AMOUNT_TYPE,
        self::STATUS,
        self::POSITION
    ];

    public $ownFields = [
        self::NAME,
        self::AMOUNT,
        self::AMOUNT_TYPE,
        self::STATUS
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function status()
    {
        return $this->belongsTo(Status::class);
    }
}

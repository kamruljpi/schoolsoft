<?php

namespace Erp\Models\Salary;

use Erp\Models\ProjectModel;
use Erp\Models\Status\Status;
use Illuminate\Database\Eloquent\Model;

class OvertimeRule extends ProjectModel
{
    const NAME = 'name';
    const SALARY_TYPES = 'salary_types';
    const AMOUNT = 'amount';
    const AMOUNT_TYPE = 'amount_type';
    const STATUS = 'status';

    public $timestamps = false;
    protected $fillable = [
        self::NAME,
        self::SALARY_TYPES,
        self::AMOUNT,
        self::AMOUNT_TYPE,
        self::STATUS
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

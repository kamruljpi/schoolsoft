<?php

namespace Erp\Models\Salary;

use Erp\Models\ProjectModel;
use Erp\Models\Status\Status;
use Illuminate\Database\Eloquent\Model;

class SalaryRule extends ProjectModel
{
    const NAME = 'name';
    const RULES = 'rules_content';

    const STATUS = 'status';
    const POSITION = 'position';

    public $timestamps = false;
    protected $fillable = [
        self::NAME,

        self::STATUS,
        self::POSITION
    ];
    public $ownFields = [
         self::NAME,
        self::STATUS
    ];



    public function status()
    {
        return $this->belongsTo(Status::class);

    }
}

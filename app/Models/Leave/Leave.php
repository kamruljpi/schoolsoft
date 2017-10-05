<?php

namespace Erp\Models\Leave;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class Leave extends ProjectModel
{
    protected $table = 'leaves';
    public $timestamps=false;

    const LEAVE_TYPE = 'type';
    const LEAVE_DETAILS = 'leave_details';
    const MAXIMUM_DAYS = 'max_days';
    const STATUS = 'status';
    const POSITION = 'position';

    protected $nonEditableFields = [];

    protected $fillable=[
        self::LEAVE_TYPE,
        self::LEAVE_DETAILS,
        self::MAXIMUM_DAYS,
        self::STATUS,
        self::POSITION
    ];

    /**
     * many leave applications under one leave type
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function leaveApplications()
    {
        return $this->hasMany(LeaveApplication::class);
    }

}

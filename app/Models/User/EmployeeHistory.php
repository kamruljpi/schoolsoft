<?php

namespace Erp\Models\User;

use Erp\Models\Department\Department;
use Erp\Models\Designation\Designation;
use Erp\Models\ProjectModel;
use Erp\Models\Shift\Shift;
use Illuminate\Database\Eloquent\Model;

class EmployeeHistory extends ProjectModel
{

    const USER = 'user_id';
    const DEPARTMENT = 'department_id';
    const DESIGNATION = 'designation_id';
    const DEPTJOINDATE = 'dept_join_date';
    const SHIFT = 'shift_id';
    const STATUS ='status';
    const POSITION = 'position';
    const DEPT_JOIN_DATE = 'dept_join_date';



    public $timestamps = false;

    protected $fillable= [
        self::USER,
        self::DEPARTMENT,
        self::DESIGNATION,
        self::STATUS,
        self::POSITION,
        self::DEPT_JOIN_DATE,
        self::SHIFT,
        self::CREATED_AT,
        self::UPDATED_AT

    ];

    /**
     * last updated shift for an employee
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

}


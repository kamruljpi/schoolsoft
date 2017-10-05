<?php

namespace Erp\Models\Designation;

use Erp\Models\Department\Department;
use Erp\Models\ProjectModel;
use Erp\Models\User\User;
use Illuminate\Database\Eloquent\Model;

//class Designation extends ProjectModel
class Designation extends Model
{
    const DEPARTMENT = 'department_id';
    const NAME = 'name';
    const STATUS ='status';
    const POSITION = 'position';

    public $timestamps = false;

    protected $fillable = [
        self::DEPARTMENT,
        self::NAME,
        self::STATUS,
        self::POSITION
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    /**
     * many users with one designation
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function users()
    {
        return $this->hasMany(User::class);
    }
}

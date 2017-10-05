<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/2/2016
 * Time: 12:20 PM
 */

namespace Erp\Models\Building;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Floor\Floor;
use Erp\Models\Room\Room;
use Erp\Models\Rack\Rack;
use Erp\Models\Routine\Routine;
use Erp\Models\Examinations\ExaminationSchedule;

class Building extends ProjectModel
{
    use SoftDeletes;

    const BUILDING_NAME = 'building_name';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'buildings';

    protected $fillable = [
        self::BUILDING_NAME,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function floors()
    {
        return $this->hasMany(Floor::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function rooms()
    {
        return $this->hasMany(Room::class);
    }

    // Building hasMany Racks
    public function racks()
    {
        return $this->hasMany(Rack::class);
    }

    // Building hasMany Routines
    public function routines()
    {
        return $this->hasMany(Routine::class);
    }

    // Building hasMany ExaminationSchedule
    public function examinationSchedules()
    {
        return $this->hasMany(ExaminationSchedule::class);
    }

}
<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/3/2016
 * Time: 10:30 AM
 */
namespace Erp\Models\Room;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Building\Building;
use Erp\Models\Floor\Floor;
use Erp\Models\Rack\Rack;
use Erp\Models\Routine\Routine;
use Erp\Models\Examinations\ExaminationSchedule;

class Room extends ProjectModel
{
    use SoftDeletes;

    const BUILDING = 'building_id';
    const FLOOR = 'floor_id';
    const ROOM_NAME = 'room_name';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'rooms';

    protected $fillable = [
        self::BUILDING,
        self::FLOOR,
        self::ROOM_NAME,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function building()
    {
        return $this->belongsTo(Building::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function floor()
    {
        return $this->belongsTo(Floor::class);
    }

    // Room hasMany Racks
    public function racks()
    {
        return $this->hasMany(Rack::class);
    }

    // Room hasMany Routines
    public function routines()
    {
        return $this->hasMany(Routine::class);
    }

    // Room hasMany ExaminationSchedule
    public function examinationSchedules()
    {
        return $this->hasMany(ExaminationSchedule::class);
    }
}
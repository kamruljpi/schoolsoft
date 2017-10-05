<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/2/2016
 * Time: 3:19 PM
 */
namespace Erp\Models\Floor;

use Erp\Models\ProjectModel;
use Erp\Models\Room\Room;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Building\Building;
use Erp\Models\Rack\Rack;
use Erp\Models\Routine\Routine;
use Erp\Models\Examinations\ExaminationSchedule;

class Floor extends ProjectModel
{
    use SoftDeletes;

    const BUILDING = 'building_id';
    const FLOOR_NAME = 'floor_name';
    const STATUS = 'status';

    public $timestamps = false;
    protected $table = 'floors';

    protected $fillable = [
        self::BUILDING,
        self::FLOOR_NAME,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function building()
    {
        return $this->belongsTo(Building::class, 'building_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function rooms()
    {
        return $this->hasMany(Room::class);
    }

    // Floor hasMany Racks
    public function racks()
    {
        return $this->hasMany(Rack::class);
    }

    // Floor hasMany Routines
    public function routines()
    {
        return $this->hasMany(Routine::class);
    }

    // Floor hasMany ExaminationSchedule
    public function examinationSchedules()
    {
        return $this->hasMany(ExaminationSchedule::class);
    }
}
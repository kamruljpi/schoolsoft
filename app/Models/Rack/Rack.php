<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 4:01 PM
 */
namespace Erp\Models\Rack;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Building\Building;
use Erp\Models\Floor\Floor;
use Erp\Models\Room\Room;

class Rack extends ProjectModel
{
    use SoftDeletes;

    const BUILDING = 'building_id';
    const FLOOR = 'floor_id';
    const ROOM = 'room_id';
    const RACK_NO = 'rack_no';
    const STATUS = 'status';
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    public $timestamps = false;
    protected $table = 'racks';

    protected $fillable = [
        self::BUILDING,
        self::FLOOR,
        self::ROOM,
        self::RACK_NO,
        self::CREATED_AT,
        self::UPDATED_AT,
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

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function room()
    {
        return $this->belongsTo(Room::class);
    }
}
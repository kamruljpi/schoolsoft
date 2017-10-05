<?php

namespace Erp\Models\Holydays;

use Erp\Models\ProjectModel;
use Erp\Models\Status\Status;
use Illuminate\Database\Eloquent\Model;
use Erp\Models\Holydays\HolyDayType;

class Holyday extends ProjectModel
{
    const DATE = 'date';
    const OCCASION = 'occasion';
    const TYPE = 'type_id';
    const STATUS = 'status';
    const POSITION = 'position';

    public $timestamps = false;

    protected $fillable = [
        self::DATE,
        self::OCCASION,
        self::TYPE,
        self::STATUS,
        self::POSITION
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function holydayType()
    {
        return $this->belongsTo(HolyDayType::class,'type_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function status()
    {
        return $this->belongsTo(Status::class);
    }



}

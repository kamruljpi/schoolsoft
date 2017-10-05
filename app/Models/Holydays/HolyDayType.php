<?php

namespace Erp\Models\Holydays;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Erp\Models\Holydays\Holyday;
use Erp\Models\Status\Status;

class HolyDayType extends ProjectModel
{
    const TYPE = 'type';
    const STATUS = 'status';
    const POSITION = 'position';


    public $timestamps = false;

    protected $fillable = [
        self::TYPE,
        self::STATUS,
        self::POSITION
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function holydays()
    {
        return $this->hasMany(Holyday::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function status()
    {
        return $this->belongsTo(Status::class);
    }
}

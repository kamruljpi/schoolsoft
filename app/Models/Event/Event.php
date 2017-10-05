<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/25/2016
 * Time: 4:26 PM
 */

namespace Erp\Models\Event;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Image\Photo;

class Event extends ProjectModel
{
    use SoftDeletes, Translatable;

    const FROM_DATE = 'from_date';
    const TO_DATE = 'to_date';
    const EVENT_TITLE = 'event_title';
    const EVENT_DESCRIPTION = 'event_description';
    const EVENT_VENUE = 'event_venue';
    const STATUS = 'status';
    const PHOTO = 'photo';

    public $timestamps = false;

    protected $table = 'events';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::FROM_DATE,
        self::TO_DATE,
        self::EVENT_TITLE,
        self::EVENT_DESCRIPTION,
        self::EVENT_VENUE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::EVENT_TITLE,
        self::EVENT_DESCRIPTION,
        self::EVENT_VENUE
    ];

    public $ownFields = [
        self::FROM_DATE,
        self::TO_DATE,
        self::STATUS
    ];

    public function photo()
    {
        return $this->morphMany(Photo::class, 'imageable');
    }

    public function photos()
    {
        return $this->hasMany(Photo::class);
    }
}
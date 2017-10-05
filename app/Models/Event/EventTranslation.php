<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/25/2016
 * Time: 4:46 PM
 */

namespace Erp\Models\Event;


use Erp\Models\ProjectModel;

class EventTranslation extends ProjectModel
{
    const EVENT_TITLE = 'event_title';
    const EVENT_DESCRIPTION = 'event_description';
    const EVENT_VENUE = 'event_venue';
    public $timestamps = false;

    protected $fillable = [
        self::EVENT_TITLE,
        self::EVENT_DESCRIPTION,
        self::EVENT_VENUE
    ];
}
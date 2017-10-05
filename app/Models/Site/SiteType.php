<?php

namespace Erp\Models\Site;

use Illuminate\Database\Eloquent\Model;

class SiteType extends Model
{
    const TYPE_NAME  = 'name';
    const POSITION  = 'position';
    const STATUS  = 'status';

    public $timestamps = false;

    protected $fillable =[

        self::TYPE_NAME,
        self::POSITION,
        self::STATUS,
    ];
}

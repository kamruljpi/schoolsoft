<?php

namespace Erp\Models\Site;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SiteGroup extends Model
{
    use SoftDeletes;

    protected $dates = ['deleted_at'];

    const SITE_GROUP_NAME  = 'name';
    const SITE_GROUP_ALIAS  = 'group_alias';
    const SITE_GROUP_EMAIL  = 'group_email';
    const SITE_GROUP_ADDRESS  = 'group_address';
    const SITE_GROUP_PHONE = 'group_phone';
    const POSITION  = 'position';
    const STATUS  = 'status';

    public $timestamps = false;

    protected $fillable =[

        self::SITE_GROUP_NAME,
        self::SITE_GROUP_ALIAS,
        self::SITE_GROUP_EMAIL,
        self::SITE_GROUP_ADDRESS,
        self::SITE_GROUP_PHONE,
        self::POSITION,
        self::STATUS,
    ];
}

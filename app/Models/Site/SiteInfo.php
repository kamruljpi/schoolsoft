<?php

namespace Erp\Models\Site;


use Dimsav\Translatable\Translatable;
use Erp\Models\Image\Photo;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SiteInfo extends Model
{
    use Translatable, SoftDeletes;

    public $timestamps = false;
    protected $dates = ['deleted_at'];

    const SITE_TYPE_ID = 'site_membership_id';
    const SITE_GROUP_ID = 'site_group_id';
    const SITE_ALIAS = 'site_alias';
    const SITE_NAME = 'site_name';
    const SITE_EMAIL = 'site_email';
    const SITE_PHONE = 'site_phone';
    const SITE_ADDRESS = 'address';
    const SITE_LOGO = 'photo';
    const STATUS = 'status';

    protected $fillable = [
        self::SITE_TYPE_ID,
        self::SITE_GROUP_ID,
        self::SITE_ALIAS,
        self::SITE_NAME,
        self::SITE_EMAIL,
        self::SITE_PHONE,
        self::SITE_ADDRESS,
        self::SITE_LOGO,
        self::STATUS,
    ];

    public $translatedAttributes = [
        self::SITE_NAME,
        self::SITE_ADDRESS,
    ];


    public function photo()
    {
        return $this->morphMany(Photo::class, 'imageable');
    }

    public function siteType()
    {
        return $this->belongsTo(SiteType::class);
    }
    public function siteGroup()
    {
        return $this->belongsTo(SiteGroup::class);
    }
}

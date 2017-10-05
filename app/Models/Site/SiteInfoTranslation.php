<?php

namespace Erp\Models\Site;


use Illuminate\Database\Eloquent\Model;

class SiteInfoTranslation extends Model
{
    const SITE_NAME = 'site_name';

    const SITE_ADDRESS = 'address';

    public $timestamps = false;

    protected $fillable = [
        self::SITE_NAME,
        self::SITE_ADDRESS,
    ];

}

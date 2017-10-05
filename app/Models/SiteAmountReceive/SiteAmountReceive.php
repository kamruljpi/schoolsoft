<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/23/2016
 * Time: 10:14 PM
 */
namespace Erp\Models\SiteAmountReceive;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\Site\SiteInfo;
use Erp\Models\User\User;

class SiteAmountReceive extends Model
{
    use SoftDeletes;

    const USER = 'user_id';
    const AMOUNT = 'amount';
    const DATE = 'date';
    const SITE_ID = 'site_id';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'site_amount_receives';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::AMOUNT,
        self::DATE,
        self::SITE_ID,
        self::STATUS
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function siteInfo()
    {
        return $this->belongsTo(SiteInfo::class, 'site_id');
    }

    // SiteAmountReceive belongsTo User
    public function siteAmountReceiveOfUser()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
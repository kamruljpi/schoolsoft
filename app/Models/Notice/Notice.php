<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 5/16/16
 * Time: 2:32 PM
 */

namespace Erp\Models\Notice;


use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\User\User;

class Notice extends ProjectModel
{
    use SoftDeletes, Translatable;

    const NOTICE = 'notice_name';
    const NOTICE_DESCRIPTION = 'notice_description';
    const NOTICE_DATE = 'notice_date';
    const FROM_SEND = 'from_send';
    const TO_SEND = 'to_send';
    const NOTICE_TYPE = 'type';
    const IS_READ = 'is_read';
    const ACCESS_LISTS = 'access_lists';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'notices';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::NOTICE,
        self::NOTICE_DESCRIPTION,
        self::NOTICE_DATE,
        self::FROM_SEND,
        self::TO_SEND,
        self::IS_READ,
        self::ACCESS_LISTS,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::NOTICE,
        self::NOTICE_DESCRIPTION
    ];

    public function user()
    {
        return $this->belongsTo(User::class,'to_send');
    }

    public function inboxUser()
    {
        return $this->belongsTo(User::class,'from_send');
    }
}
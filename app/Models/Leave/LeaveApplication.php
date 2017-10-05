<?php

namespace Erp\Models\Leave;

use Dimsav\Translatable\Translatable;
use Erp\Models\ProjectModel;
use Erp\Models\Status\Status;
use Erp\Models\User\User;
use Illuminate\Database\Eloquent\Model;

class LeaveApplication extends ProjectModel
{
    use Translatable;


    const LEAVE_TYPE = 'leave_id';
    const USER = 'user_id';
    const SUBJECT = 'subject';
    const EXPLANATION = 'explanation';
    const From = 'from';
    const To = 'to';
    const APPLIED_ON = 'applied_on';

    const STATUS = 'status_id';
    const POSITION = 'position';

    public $timestamps = false;

    protected $fillable = [
        self::LEAVE_TYPE,
        self::USER,
        self::SUBJECT,
        self::EXPLANATION,
        self::APPLIED_ON,
        self::From,
        self::To,
        self::STATUS,
        self::POSITION
    ];

    public $translatedAttributes = [
        self::SUBJECT,
        self::EXPLANATION
    ];


    /**
     * one user might have more than one leave application
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * many applicaitons under one type of leave
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function leave()
    {
        return $this->belongsTo(Leave::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function status()
    {
        return $this->belongsTo(Status::class);
    }

}

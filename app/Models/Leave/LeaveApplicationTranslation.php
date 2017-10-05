<?php

namespace Erp\Models\Leave;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class LeaveApplicationTranslation extends ProjectModel
{
    const LEAVE_APPLICATION = 'leave_application_id';
    const SUBJECT = 'subject';
    const EXPLANATION = 'explanation';

    public $timestamps = false;

    protected $fillable = [

        self::SUBJECT,
        self::EXPLANATION
    ];


}

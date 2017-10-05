<?php

namespace Erp\Models\Result;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class ResultSetting extends ProjectModel
{
    const SETTINGS = 'settings';


    public $timestamps = false;
    protected $fillable = [
        self::SETTINGS
    ];
}

<?php

namespace Erp\Models\Shift;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class ShiftTranslation extends ProjectModel
{
    const NAME = 'name';

    public $timestamps = false;

    protected $fillable = [self::NAME];
}

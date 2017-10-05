<?php

namespace Erp\Models\Gender;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class GenderTranslation extends ProjectModel
{

    public $timestamps = false;
    protected $fillable = ['gender_name'];
}

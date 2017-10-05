<?php

namespace Erp\Models\Language;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class Language extends ProjectModel
{

    protected $fillable = ['name','iso_code','is_rtl','status','position'];

    public $timestamps = false;


}

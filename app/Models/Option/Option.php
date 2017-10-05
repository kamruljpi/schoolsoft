<?php

namespace Erp\Models\Option;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class Option extends ProjectModel
{


    public $timestamps = false;

    protected $fillable = ['name','value'];

}

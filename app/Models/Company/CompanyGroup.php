<?php

namespace Erp\Models\Company;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class CompanyGroup extends ProjectModel
{

    public $timestamps = false;
    protected $fillable = ['name'];

    public function companies()
    {
        return $this->hasMany(Company::class);
    }



}

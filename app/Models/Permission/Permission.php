<?php

namespace Erp\Models\Permission;

use Erp\Models\ProjectModel;
use Erp\Models\Role\Role;
use Illuminate\Database\Eloquent\Model;

class Permission extends ProjectModel
{


    const NAME = 'name';
    const LABEL = 'label';
    const STATUS = 'status';
    const POSITION = 'position';

    public $timestamps = false;
    protected $fillable = ['name','label','status','position'];

    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }


}

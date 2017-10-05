<?php

namespace Erp\Models\Religion;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Erp\Models\User\User;

class Religion extends ProjectModel
{

    public $timestamps = false;

    const NAME = 'name';
    const STATUS = 'status';

    protected $fillable = [self::NAME,self::STATUS];

    public function users()
    {
        return $this->hasMany(User::class);
    }
}

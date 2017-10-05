<?php

namespace Erp\Models\Email;

use Erp\Models\ProjectModel;
use Erp\Models\User\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;

class Email extends ProjectModel implements AuthenticatableContract
{
    use Authenticatable;

    const EMAIL = 'email';
    const EMAILER_ID = 'emailer_id';
    const EMAILER_TYPE = 'emailer_type';
    const STATUS = 'status';
    const IS_DEFAULT = 'is_default';
    public $timestamps = false;
    protected $fillable = [self::EMAIL,self::EMAILER_ID,self::EMAILER_TYPE,self::STATUS,self::IS_DEFAULT];

    public function emailer()
    {
        return $this->morphTo();
    }
}

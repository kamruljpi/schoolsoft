<?php

namespace Erp\Models\User;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class UserTranslation extends ProjectModel
//class UserTranslation extends Model
{

    const FIRST_NAME = 'first_name';
    const LAST_NAME = 'last_name';
    const ADDRESS = 'address';
    const FATHER = 'father_name';
    const MOTHER = 'mother_name';
    const PERMANENT_ADDRESS = 'permanent_address';
    public $timestamps = false;

    protected $fillable = [
        self::FIRST_NAME,
        self::LAST_NAME,
        self::ADDRESS,
        self::FATHER,
        self::MOTHER,
        self::PERMANENT_ADDRESS
    ];


}

<?php

namespace Erp\Models\Marks;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MarksType extends ProjectModel
{
    use SoftDeletes;

    public $timestamps = false;

    const MARKS_TYPE ='marks_type';
    const STATUS = 'status';



    protected $fillable = [
        self::MARKS_TYPE,
        self::STATUS
    ];

    protected $dates = ['deleted_at'];

}

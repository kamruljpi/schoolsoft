<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 10:42 AM
 */
namespace Erp\Models\Relation;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Reference\Reference;

class Relation extends ProjectModel
{
    use SoftDeletes, Translatable;


    const RELATION = 'relation_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'relations';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::RELATION,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::RELATION
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function references()
    {
        return $this->hasMany(Reference::class);
    }
}
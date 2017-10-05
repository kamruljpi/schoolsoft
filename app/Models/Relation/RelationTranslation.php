<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 10:49 AM
 */

namespace Erp\Models\Relation;


use Erp\Models\ProjectModel;

class RelationTranslation extends ProjectModel
{
    const RELATION = 'relation_name';

    public $timestamps = false;

    protected $fillable = [
        self::RELATION
    ];
}
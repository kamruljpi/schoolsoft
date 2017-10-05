<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/12/2016
 * Time: 11:50 AM
 */

namespace Erp\Models\Reference;


use Erp\Models\ProjectModel;

class ReferenceTranslation extends ProjectModel
{
    const REFERENCE = 'reference_name';
    const ORGANIZATION = 'organization';
    const DESIGNATION = 'designation';
    const ADDRESS = 'address';

    public $timestamps = false;

    protected $fillable = [
        self::REFERENCE,
        self::ORGANIZATION,
        self::DESIGNATION,
        self::ADDRESS
    ];
}
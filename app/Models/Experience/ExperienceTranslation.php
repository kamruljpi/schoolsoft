<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/9/2016
 * Time: 12:50 PM
 */

namespace Erp\Models\Experience;


use Erp\Models\ProjectModel;

class ExperienceTranslation extends ProjectModel
{
    const EXPERIENCE = 'experience_name';

    public $timestamps = false;

    protected $fillable = [
        self::EXPERIENCE
    ];
}
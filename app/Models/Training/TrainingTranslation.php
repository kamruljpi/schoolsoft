<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/7/2016
 * Time: 10:58 AM
 */

namespace Erp\Models\Training;


use Erp\Models\ProjectModel;

class TrainingTranslation extends ProjectModel
{
    const TRAINING_TITLE = 'training_title';
    const TRAINING_COVER = 'training_cover';
    const INSTITUTE = 'institute_name';
    const LOCATION = 'location';

    public $timestamps = false;

    protected $fillable = [
        self::TRAINING_TITLE,
        self::TRAINING_COVER,
        self::INSTITUTE,
        self::LOCATION
    ];
}
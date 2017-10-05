<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/11/2016
 * Time: 12:23 PM
 */

namespace Erp\Models\CvLanguage;


use Erp\Models\ProjectModel;

class CvLanguageTranslation extends ProjectModel
{
    const CV_LANGUAGE = 'cv_language_name';

    public $timestamps = false;

    protected $fillable = [
        self::CV_LANGUAGE
    ];
}
<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/11/2016
 * Time: 12:18 PM
 */
namespace Erp\Models\CvLanguage;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\CvLanguageSkill\CvLanguageSkill;

class CvLanguage extends ProjectModel
{
    use SoftDeletes, Translatable;


    const CV_LANGUAGE = 'cv_language_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'cv_languages';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::CV_LANGUAGE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::CV_LANGUAGE
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function cvLanguageskills()
    {
        return $this->hasMany(CvLanguageSkill::class);
    }
}
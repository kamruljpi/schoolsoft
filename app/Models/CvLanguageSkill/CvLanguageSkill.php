<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/11/2016
 * Time: 2:18 PM
 */
namespace Erp\Models\CvLanguageSkill;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Erp\Models\CvLanguage\CvLanguage;

class CvLanguageSkill extends ProjectModel
{
    use SoftDeletes;


    const USER = 'user_id';
    const CV_LANGUAGE = 'cv_language_id';
    const WRITING = 'writing';
    const READING = 'reading';
    const SPEAKING = 'speaking';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'cv_language_skills';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::USER,
        self::CV_LANGUAGE,
        self::WRITING,
        self::READING,
        self::SPEAKING,
        self::STATUS
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function cvLanguage()
    {
        return $this->belongsTo(CvLanguage::class);
    }
}
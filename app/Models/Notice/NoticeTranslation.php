<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/16/16
 * Time: 2:48 PM
 */

namespace Erp\Models\Notice;


use Erp\Models\ProjectModel;

class NoticeTranslation extends ProjectModel
{
    const NOTICE = 'notice_name';
    const NOTICE_DESCRIPTION = 'notice_description';
    public $timestamps = false;

    protected $fillable = [
        self::NOTICE,
        self::NOTICE_DESCRIPTION
    ];
}
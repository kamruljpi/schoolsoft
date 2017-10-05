<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 11:44 AM
 */

namespace Erp\Models\Author;


use Erp\Models\ProjectModel;

class AuthorTranslation extends ProjectModel
{
    const AUTHOR_NAME = 'author_name';
    const AUTHOR_BIRTH_PLACE = 'author_birth_place';
    const AUTHOR_NOTE = 'author_note';
    public $timestamps = false;

    protected $fillable = [
        self::AUTHOR_NAME,
        self::AUTHOR_BIRTH_PLACE,
        self::AUTHOR_NOTE
    ];
}
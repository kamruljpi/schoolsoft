<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/6/2016
 * Time: 11:36 AM
 */

namespace Erp\Models\Book;


use Erp\Models\ProjectModel;

class BookTranslation extends ProjectModel
{
    const BOOK = 'book_name';
    public $timestamps = false;

    protected $fillable = [
        self::BOOK
    ];
}
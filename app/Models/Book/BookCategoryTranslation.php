<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 10:31 AM
 */

namespace Erp\Models\Book;


use Erp\Models\ProjectModel;

class BookCategoryTranslation extends ProjectModel
{
    const BOOK_CATEGORY = 'book_category_name';
    public $timestamps = false;

    protected $fillable = [
        self::BOOK_CATEGORY
    ];
}
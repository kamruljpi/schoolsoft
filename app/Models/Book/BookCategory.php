<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/4/2016
 * Time: 5:03 PM
 */
namespace Erp\Models\Book;

use Erp\Models\Book\Book;
use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;

class BookCategory extends ProjectModel
{
    use SoftDeletes, Translatable;

    const BOOK_CATEGORY = 'book_category_name';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'book_categories';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::BOOK_CATEGORY,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::BOOK_CATEGORY
    ];

    //BookCategory hasMany Book
    public function booksOfBookCategory()
    {
        return $this->hasMany(Book::class);
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/6/2016
 * Time: 11:25 AM
 */

namespace Erp\Models\Book;


use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Book\BookCategory;
use Erp\Models\Author\Author;

class Book extends ProjectModel
{
    use SoftDeletes, Translatable;

    const BOOK_CATEGORY = 'book_category_id';
    const AUTHOR = 'author_id';
    const SUBJECT_CODE = 'subject_code';
    const BOOK = 'book_name';
    const BOOK_PRICE = 'book_price';
    const QUANTITY = 'quantity';
    const RACK_NO = 'rack_no';
    const STATUS = 'status';

    public $timestamps = false;

    protected $table = 'books';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::BOOK_CATEGORY,
        self::AUTHOR,
        self::SUBJECT_CODE,
        self::BOOK,
        self::BOOK_PRICE,
        self::QUANTITY,
        self::RACK_NO,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::BOOK
    ];

    // Book belongsTo BookCategory
    public function bookCategory()
    {
        return $this->belongsTo(BookCategory::class);
    }

    // Book belongsTo Author
    public function bookAuthor()
    {
        return $this->belongsTo(Author::class, 'author_id');
    }
}
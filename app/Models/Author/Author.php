<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 6/5/2016
 * Time: 11:37 AM
 */
namespace Erp\Models\Author;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\SoftDeletes;
use Dimsav\Translatable\Translatable;
use Erp\Models\Image\Photo;
use Erp\Models\Book\Book;

class Author extends ProjectModel
{
    use SoftDeletes, Translatable;

    const AUTHOR_NAME = 'author_name';
    const AUTHOR_DATE_OF_BIRTH = 'date_of_birth';
    const AUTHOR_BIRTH_PLACE = 'author_birth_place';
    const AUTHOR_NOTE = 'author_note';
    const STATUS = 'status';
    const PHOTO = 'photo';

    public $timestamps = false;

    protected $table = 'authors';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        self::AUTHOR_NAME,
        self::AUTHOR_DATE_OF_BIRTH,
        self::AUTHOR_BIRTH_PLACE,
        self::AUTHOR_NOTE,
        self::STATUS
    ];

    public $translatedAttributes = [
        self::AUTHOR_NAME,
        self::AUTHOR_BIRTH_PLACE,
        self::AUTHOR_NOTE
    ];

    public $ownFields = [
        self::AUTHOR_DATE_OF_BIRTH,
        self::STATUS
    ];

    public function photo()
    {
        return $this->morphMany(Photo::class, 'imageable');
    }

    public function photos()
    {
        return $this->hasMany(Photo::class);
    }

    //Author hasMany Book
    public function booksOfAuthor()
    {
        return $this->hasMany(Book::class);
    }
}
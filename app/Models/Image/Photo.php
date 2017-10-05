<?php

namespace Erp\Models\Image;

use Erp\Models\ProjectModel;
use Erp\Models\Student\Student;
use Erp\Models\User\User;
use Erp\Models\Event\Event;
use Erp\Models\Author\Author;

use Illuminate\Database\Eloquent\Model;

//class Photo extends ProjectModel
class Photo extends Model
{

    const NAME = 'name';
    const EXTENSION = 'extension';
    const PATH = 'path';


    public $timestamps = false;

    protected $fillable = [
        self::NAME,
        self::EXTENSION,
        self::PATH
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\MorphTo
     */
    public function imageable()
    {
        return $this->morphTo();
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function students()
    {
        return $this->belongsTo(Student::class);
    }

    public function events()
    {
        return $this->belongsTo(Event::class);
    }

    public function authors()
    {
        return $this->belongsTo(Author::class);
    }
}

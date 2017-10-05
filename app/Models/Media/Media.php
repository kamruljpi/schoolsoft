<?php

namespace Erp\Models\Media;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class Media extends ProjectModel
{

    protected $table = 'medias';
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
    public function filable()
    {
        return $this->morphTo();
    }

}

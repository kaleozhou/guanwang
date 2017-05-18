<?php

namespace Modules\News\Entities;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use Translatable;

    protected $table = 'news__news';
    public $translatedAttributes = [];
    protected $fillable = [];
}

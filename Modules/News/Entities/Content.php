<?php

namespace Modules\News\Entities;

use Dimsav\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    use Translatable;

    protected $table = 'news__contents';
    public $translatedAttributes = [];
    protected $fillable = [];
}

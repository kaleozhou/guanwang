<?php

namespace Modules\News\Entities;

use Illuminate\Database\Eloquent\Model;

class ContentTranslation extends Model
{
    public $timestamps = false;
    protected $fillable = [];
    protected $table = 'news__content_translations';
}

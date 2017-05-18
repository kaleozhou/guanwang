<?php

namespace Modules\News\Entities;

use Illuminate\Database\Eloquent\Model;

class NewsTranslation extends Model
{
    public $timestamps = false;
    protected $fillable = [];
    protected $table = 'news__news_translations';
}

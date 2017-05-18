<?php

namespace Modules\News\Repositories\Cache;

use Modules\News\Repositories\ContentRepository;
use Modules\Core\Repositories\Cache\BaseCacheDecorator;

class CacheContentDecorator extends BaseCacheDecorator implements ContentRepository
{
    public function __construct(ContentRepository $content)
    {
        parent::__construct();
        $this->entityName = 'news.contents';
        $this->repository = $content;
    }
}

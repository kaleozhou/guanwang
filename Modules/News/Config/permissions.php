<?php

return [
    'news.news' => [
        'index' => 'news::news.list resource',
        'create' => 'news::news.create resource',
        'edit' => 'news::news.edit resource',
        'destroy' => 'news::news.destroy resource',
    ],
    'news.contents' => [
        'index' => 'news::contents.list resource',
        'create' => 'news::contents.create resource',
        'edit' => 'news::contents.edit resource',
        'destroy' => 'news::contents.destroy resource',
    ],
// append


];

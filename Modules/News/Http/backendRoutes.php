<?php

use Illuminate\Routing\Router;
/** @var Router $router */

$router->group(['prefix' =>'/news'], function (Router $router) {
    $router->bind('news', function ($id) {
        return app('Modules\News\Repositories\NewsRepository')->find($id);
    });
    $router->get('news', [
        'as' => 'admin.news.news.index',
        'uses' => 'NewsController@index',
        'middleware' => 'can:news.news.index'
    ]);
    $router->get('news/create', [
        'as' => 'admin.news.news.create',
        'uses' => 'NewsController@create',
        'middleware' => 'can:news.news.create'
    ]);
    $router->post('news', [
        'as' => 'admin.news.news.store',
        'uses' => 'NewsController@store',
        'middleware' => 'can:news.news.create'
    ]);
    $router->get('news/{news}/edit', [
        'as' => 'admin.news.news.edit',
        'uses' => 'NewsController@edit',
        'middleware' => 'can:news.news.edit'
    ]);
    $router->put('news/{news}', [
        'as' => 'admin.news.news.update',
        'uses' => 'NewsController@update',
        'middleware' => 'can:news.news.edit'
    ]);
    $router->delete('news/{news}', [
        'as' => 'admin.news.news.destroy',
        'uses' => 'NewsController@destroy',
        'middleware' => 'can:news.news.destroy'
    ]);
    $router->bind('content', function ($id) {
        return app('Modules\News\Repositories\ContentRepository')->find($id);
    });
    $router->get('contents', [
        'as' => 'admin.news.content.index',
        'uses' => 'ContentController@index',
        'middleware' => 'can:news.contents.index'
    ]);
    $router->get('contents/create', [
        'as' => 'admin.news.content.create',
        'uses' => 'ContentController@create',
        'middleware' => 'can:news.contents.create'
    ]);
    $router->post('contents', [
        'as' => 'admin.news.content.store',
        'uses' => 'ContentController@store',
        'middleware' => 'can:news.contents.create'
    ]);
    $router->get('contents/{content}/edit', [
        'as' => 'admin.news.content.edit',
        'uses' => 'ContentController@edit',
        'middleware' => 'can:news.contents.edit'
    ]);
    $router->put('contents/{content}', [
        'as' => 'admin.news.content.update',
        'uses' => 'ContentController@update',
        'middleware' => 'can:news.contents.edit'
    ]);
    $router->delete('contents/{content}', [
        'as' => 'admin.news.content.destroy',
        'uses' => 'ContentController@destroy',
        'middleware' => 'can:news.contents.destroy'
    ]);
// append


});

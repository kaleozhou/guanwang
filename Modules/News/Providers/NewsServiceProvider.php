<?php

namespace Modules\News\Providers;

use Illuminate\Support\ServiceProvider;
use Modules\Core\Traits\CanPublishConfiguration;

class NewsServiceProvider extends ServiceProvider
{
    use CanPublishConfiguration;
    /**
     * Indicates if loading of the provider is deferred.
     *
     * @var bool
     */
    protected $defer = false;

    /**
     * Register the service provider.
     *
     * @return void
     */
    public function register()
    {
        $this->registerBindings();
    }

    public function boot()
    {
        $this->publishConfig('news', 'permissions');
    }

    /**
     * Get the services provided by the provider.
     *
     * @return array
     */
    public function provides()
    {
        return array();
    }

    private function registerBindings()
    {
        $this->app->bind(
            'Modules\News\Repositories\NewsRepository',
            function () {
                $repository = new \Modules\News\Repositories\Eloquent\EloquentNewsRepository(new \Modules\News\Entities\News());

                if (! config('app.cache')) {
                    return $repository;
                }

                return new \Modules\News\Repositories\Cache\CacheNewsDecorator($repository);
            }
        );
        $this->app->bind(
            'Modules\News\Repositories\ContentRepository',
            function () {
                $repository = new \Modules\News\Repositories\Eloquent\EloquentContentRepository(new \Modules\News\Entities\Content());

                if (! config('app.cache')) {
                    return $repository;
                }

                return new \Modules\News\Repositories\Cache\CacheContentDecorator($repository);
            }
        );
// add bindings


    }
}

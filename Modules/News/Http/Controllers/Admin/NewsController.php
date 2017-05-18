<?php

namespace Modules\News\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Modules\News\Entities\News;
use Modules\News\Repositories\NewsRepository;
use Modules\Core\Http\Controllers\Admin\AdminBaseController;

class NewsController extends AdminBaseController
{
    /**
     * @var NewsRepository
     */
    private $news;

    public function __construct(NewsRepository $news)
    {
        parent::__construct();

        $this->news = $news;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //$news = $this->news->all();

        return view('news::admin.news.index', compact(''));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('news::admin.news.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $this->news->create($request->all());

        return redirect()->route('admin.news.news.index')
            ->withSuccess(trans('core::core.messages.resource created', ['name' => trans('news::news.title.news')]));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  News $news
     * @return Response
     */
    public function edit(News $news)
    {
        return view('news::admin.news.edit', compact('news'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  News $news
     * @param  Request $request
     * @return Response
     */
    public function update(News $news, Request $request)
    {
        $this->news->update($news, $request->all());

        return redirect()->route('admin.news.news.index')
            ->withSuccess(trans('core::core.messages.resource updated', ['name' => trans('news::news.title.news')]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  News $news
     * @return Response
     */
    public function destroy(News $news)
    {
        $this->news->destroy($news);

        return redirect()->route('admin.news.news.index')
            ->withSuccess(trans('core::core.messages.resource deleted', ['name' => trans('news::news.title.news')]));
    }
}

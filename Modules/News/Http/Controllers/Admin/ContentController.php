<?php

namespace Modules\News\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Modules\News\Entities\Content;
use Modules\News\Repositories\ContentRepository;
use Modules\Core\Http\Controllers\Admin\AdminBaseController;

class ContentController extends AdminBaseController
{
    /**
     * @var ContentRepository
     */
    private $content;

    public function __construct(ContentRepository $content)
    {
        parent::__construct();

        $this->content = $content;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //$contents = $this->content->all();

        return view('news::admin.contents.index', compact(''));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('news::admin.contents.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        $this->content->create($request->all());

        return redirect()->route('admin.news.content.index')
            ->withSuccess(trans('core::core.messages.resource created', ['name' => trans('news::contents.title.contents')]));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Content $content
     * @return Response
     */
    public function edit(Content $content)
    {
        return view('news::admin.contents.edit', compact('content'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Content $content
     * @param  Request $request
     * @return Response
     */
    public function update(Content $content, Request $request)
    {
        $this->content->update($content, $request->all());

        return redirect()->route('admin.news.content.index')
            ->withSuccess(trans('core::core.messages.resource updated', ['name' => trans('news::contents.title.contents')]));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Content $content
     * @return Response
     */
    public function destroy(Content $content)
    {
        $this->content->destroy($content);

        return redirect()->route('admin.news.content.index')
            ->withSuccess(trans('core::core.messages.resource deleted', ['name' => trans('news::contents.title.contents')]));
    }
}

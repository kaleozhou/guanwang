<?php
namespace Modules\Page\Http\Controllers;
use Illuminate\Contracts\Foundation\Application;
use Modules\Core\Http\Controllers\BasePublicController;
use Modules\Menu\Repositories\MenuItemRepository;
use Modules\Page\Entities\Page;
use Illuminate\Support\Facdes\DB;
use App\Modes\News;
use Modules\Page\Repositories\PageRepository;
class PublicController extends BasePublicController
{
    /**
     * @var PageRepository
     */
    private $page;
    /**
     * @var Application
     */
    private $app;
    public function __construct(PageRepository $page, Application $app)
    {
        parent::__construct();
        $this->page = $page;
        $this->app = $app;
    }
    /**
     * @param $slug
     * @return \Illuminate\View\View
     */
    public function uri($slug)
    {
        $page = $this->findPageForSlug($slug);
        $this->throw404IfNotFound($page);
        $template = $this->getTemplateForPage($page);
        return view($template, compact('page'));
    }
    public function newslist($tags='cjtt'){
        $tem='news_'.$tags;
        $page = $this->findPageForSlug('newslist');
        $this->throw404IfNotFound($page);
        $template = $this->getTemplateForPage($page);
        $newss=$this->page->all()->where('template',$tem);
        if ($tags=='cjkx') {
            $new_msg_id=$newss->first()->id;
        }
        else
        {
            $new_msg_id=1;
        }
        return view('newslist',compact('page','tags','newss','new_msg_id'));
    }
    public function newsdetails($id=1){
        $page = $this->findPageForSlug('newsdetails');
        $this->throw404IfNotFound($page);
        $template = $this->getTemplateForPage($page);
        $news=$this->page->all()->where('id',$id)->first();
        return view('newsdetails',compact('page','news'));
    }
  
    /**
     * @return \Illuminate\View\View
     */
    public function homepage()
    {
        $page = $this->page->findHomepage();
        $this->throw404IfNotFound($page);
        $template = $this->getTemplateForPage($page);
        return view($template, compact('page'));
    }
    /**
     * Find a page for the given slug.
     * The slug can be a 'composed' slug via the Menu
     * @param string $slug
     * @return Page
     */
    private function findPageForSlug($slug)
    {
        $menuItem = app(MenuItemRepository::class)->findByUriInLanguage($slug, locale());
        if ($menuItem) {
            return $this->page->find($menuItem->page_id);
        }
        return $this->page->findBySlug($slug);
    }
    /**
     * Return the template for the given page
     * or the default template if none found
     * @param $page
     * @return string
     */
    private function getTemplateForPage($page)
    {
        return (view()->exists($page->template)) ? $page->template : 'default';
    }
    /**
     * Throw a 404 error page if the given page is not found
     * @param $page
     */
    private function throw404IfNotFound($page)
    {
        if (is_null($page)) {
            $this->app->abort('404');
        }
    }
}

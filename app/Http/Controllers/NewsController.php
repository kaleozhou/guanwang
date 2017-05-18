<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\News;
use App\Http\Requests;
class NewsController extends Controller
{
    //显示新闻根据类别显示新闻
    public function showNewsList(String $tag){
        $news_array=News::where('tag',$tag)->paginate(15);
        return view('news')
            ->with('news_array',$news_array)
            ->with('tag',$tag);
}
}

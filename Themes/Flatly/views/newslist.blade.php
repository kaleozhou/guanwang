@extends('layouts.master')
@section('title')
{{ $page->title }} | @parent
@stop
@section('meta')
<!-- 本页面 -->
<link rel="stylesheet" type="text/css" href="http://www.niuke.cn/static/css/news/news.css?v=1490612919">
<!-- 页面私有css -->
<script type="text/javascript" async="" defer="" src="//piwik.niuke.cn/piwik.js"></script>
<script src="https://hm.baidu.com/hm.js?9b97bf8c9fa8ba16b3ae8798d7f35599"></script>
<script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=414416"></script>
<link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_32.css?v=4413acf0.css">
<meta name="title" content="{{ $page->meta_title}}" />
<meta name="description" content="{{ $page->meta_description }}" />
@stop
@section('content')
<div class="content">
    <div class="w1200 clear">
        <!-- left-->
        <div class="news_l list_l">
            <ul class="list_title_ul clear">
                @if ($tags=='cjtt')
                <li class="li_on"><a href="/newslist/cjtt">财经头条</a></li>
                @else
                <li ><a href="/newslist/cjtt">财经头条</a></li>
                @endif
                @if ($tags=='cjkx')
                <li class="li_on"><a href="/newslist/cjkx">7X24快讯</a></li>
                @else
                <li><a href="/newslist/cjkx">7X24快讯</a></li>
                @endif
                @if ($tags=='hsgs')
                <li class="li_on"><a href="/newslist/hsgs">沪深股市</a></li>
                @else
                <li><a href="/newslist/hsgs">沪深股市</a></li>
                @endif
                @if ($tags=='cpbd')
                <li class="li_on"><a href="/newslist/cpbd">操盘必读</a></li>
                @else
                <li><a href="/newslist/cpbd">操盘必读</a></li>
                @endif
                @if ($tags=='tjcj')
                <li class="li_on"><a href="/newslist/tjcj">图解财经</a></li>
                @else
                <li><a href="/newslist/tjcj">图解财经</a></li>
                @endif
                @if ($tags=='gmxy')
                <li class="li_on"><a href="/newslist/gmxy">股民学院</a></li>
                @else
                <li><a href="/newslist/gmxy">股民学院</a></li>
                @endif
            </ul>
            @if ($tags=='cjkx')
            <div class="list_con">
                <div class="flash_msg" data-status="1">
                    <ul>
                        @foreach ($newss as $news)
                        @if ($news->id == $new_msg_id)
                        <li class="new_msg"><div class="time"><span> {{ $news->updated_at }} </span></div>{{$news->title}}</li>
                        @else
                        <li><div class="time"><span> {{ $news->updated_at }} </span></div>{{$news->title}}</li>
                        @endif
                        @endforeach
                    </ul>
                    <iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe>
                </div>
                <a class="load_more" href="javascript:;"><span class="loading" style="display:none"></span><em>点击加载更多内容</em></a>
            </div>
            @else
            <div class="list_con">
                @foreach ($newss as $news)
                <div class="list_c clear">
                    <a href="/newsdetails/{{ $news->id }}" class="img_a"><img src="{{ $news->meta_title }}" width="210" height="140"></a>
                    <div class="list_txt">
                        <h2><a href="/newsdetails/{{ $news->id }}">{{ $news->title }}</a></h2>
                        <p class="desc"></p>
                        <p class="time">{{ $news->updated_at }}</p>
                    </div>
                    <iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe>
                </div>
                @endforeach
            </div>
            @endif
        </div>
        <!-- right-->
        <div class="news_r">
            <div class="stock_data">
                <ul class="quotationClass"><li><span>上证指数</span><em class=" up red wh">3288.97</em><em class=" red wh1">(0.60%)19.57</em></li><li><span>深证成指</span><em class=" up red wh">10655.79</em><em class=" red wh1">(0.50%)52.52</em></li><li><span>创业板指</span><em class=" up red wh">1917.63</em><em class=" red wh1">(0.27%)5.18</em></li></ul>
            </div>
            <h2>推荐产品</h2>
            <p><a href="/" class="href_0"><img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221222_478.jpg" width="320" height="180"></a></p>
            <p><a href="/tuiguang" class="href_1"><img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221539_907.jpg" width="320" height="180"></a></p>
        </div>
    </div>
</div>
</div>
@stop

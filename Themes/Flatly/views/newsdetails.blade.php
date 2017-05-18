@extends('layouts.master')
@section('title')
{{ $news->title }} | @parent
@stop
@section('meta')
<!-- 本页面 -->
<link rel="stylesheet" type="text/css" href="http://www.niuke.cn/static/css/news/news.css?v=1490612919">
<!-- 页面私有css -->
<script type="text/javascript" async="" defer="" src="//piwik.niuke.cn/piwik.js"></script><script src="https://hm.baidu.com/hm.js?9b97bf8c9fa8ba16b3ae8798d7f35599"></script><script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=414434"></script><link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_32.css?v=4413acf0.css">
<meta name="title" content="{{ $news->meta_title}}" />
<meta name="description" content="{{ $news->meta_description }}" />
@stop
@section('content')
<div class="content">
    <div class="w1200">
<p class="article_guide">当前位置：顶点财经 &gt; <a href="/newslist">顶点资讯</a> &gt;<span>正文</span></p>
        <div class="article_main clear">
            <!-- left-->
            <div class="news_l">
                <div class="article_header">
                    <h2>{{$news->title}}</h2>
                    <p>发布时间：{{ $news->updated_at }}</p>
                </div>
                <!--<div class="stock_desc">
                    <p><b>摘要：</b></p>
                    </div>-->
                    <div class="stock_article">
                        {!! $news->body !!}
                    </div>
            </div>
            <!-- right-->
            <div class="news_r">
                <div class="stock_data">
                    <ul class="quotationClass"><li><span>上证指数</span><em class=" down green wh">3278.53</em><em class=" green wh1">(-0.32%)-10.43</em></li><li><span>深证成指</span><em class=" down green wh">10642.19</em><em class=" green wh1">(-0.13%)-13.60</em></li><li><span>创业板指</span><em class=" down green wh">1909.50</em><em class=" green wh1">(-0.42%)-8.13</em></li></ul>
                </div>
                <h2>推荐产品</h2>
                <p><a href="/" class="href_0"><img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221222_478.jpg" width="320" height="180"></a></p>
                <p><a href="/tuiguang" class="href_1"><img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221539_907.jpg" width="320" height="180"></a></p>
            </div>
            <input type="hidden" class="quotationToken" value="C3EIeoaVuaVDcVLGNspnwBO20XEx0RC0BebgyRfK">            </div>
        <iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe></div>
</div>
@stop

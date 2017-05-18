@extends('layouts.master')
@section('title')
{{ $page->title }} | @parent
@stop
@section('meta')
<link rel="stylesheet" type="text/css" href="/css/tuiguang.css">
<meta name="title" content="{{ $page->meta_title}}" />
<meta name="description" content="{{ $page->meta_description }}" />
@stop
@section('content')
<div class='row'>
    <div class="col-md-12 banner" style="text-align:center">
        <img src="/images/banner.jpg" class="img-responsive center-block">
        <img src="/images/btn1.png" onclick="myshow();">
    </div>
</div>
<div class='row'>
    <div class="col-md-12 page1">
        <img src="/images/title1.png" class="img-responsive center-block">
        <p>雄安新区被定义为比肩<font>深圳经济特区</font>和<font>上海浦东新区</font>的千年大计<br>东西横贯港口和内陆商品通路<br>南北联合人才与城市融通结合<br>相关板块<font>钢铁、水泥、工程机械、港口、高速公路</font>将率先启动。</p>
        <img src="/images/btn3.png" onclick="myshow();">
    </div>
</div>
<div class='row'>
    <div class="col-md-12 page1_1">
        <p><font>央企改革+一带一路</font>基础建材受益，<font>雄安新区</font>空中加油给力</p>
        <img src="/images/stock2.jpg" class="img-responsive center-block">
    </div>
</div>
<div class='row'>
    <div class="col-md-12 page2 center">
        <h1>雄安新区——下一个深圳特区还是浦东新区？</h1>
        <h2>这些新区特色将引领哪些板块，带动哪些个股</h2>
        <img src="/images/page2.jpg" class="img-responsive center-block">
    </div>
</div>
<div class='row'>
    <div class="col-md-12 page3 center">
        <img src="/images/page3.png" class="img-responsive center-block">
        <img src="/images/btn2.png" onclick="myshow();">
    </div>
</div>
<div class='row'>
    <div class="col-md-12 page4 center">
        <p><font>一带一路</font>基础建材受益，<font>雄安新区</font>空中加油，更符合雄安绿色宜居倡导。<iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe></p>
        <img src="/images/stock1.jpg"class="img-responsive center-block">
    </div>
</div>
<div class='row'>
    <div class="col-md-12 page5 center">
        <h1>摇钱术炒股器——最前沿 </h1>
        <h2>这些新区特色将引领哪些板块，带动哪些个股</h2>
        <img src="/images/page5.jpg" class="img-responsive center-block">
    </div>
</div>
<div class='row'>
    <div class="col-md-12 page6">
        <img src="/images/page6.png" class="img-responsive center-block">
        <img src="/images/page7.png" class="img-responsive center-block">

    </div>
</div>

@stop

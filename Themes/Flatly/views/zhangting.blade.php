@extends('layouts.master')
@section('title')
{{ $page->title }} | @parent
@stop


<script src="/js/jquery-3.2.0.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/js/zhangting_js.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="/css/zhangting.css"/>
@section('meta')
<meta name="title" content="{{ $page->meta_title}}" />
<meta name="description" content="{{ $page->meta_description }}" />
@stop
@section('content')
<div class="row">
    <div class="col-md-12">
        <img src="/images/top_02a1.jpg"class="img-responsive center-block">
        <img src="/images/top_03a.jpg"class="img-responsive center-block">
        <div class="ewm">
            <img src="/images/logo500px.png"class="img-responsive center-block">
        </div>
        <div class="wxnumber">
            moneytreestore
        </div>
    </div>
</div>
<div class="row">
    <div class="top11">
        <div class="col-md-12">
            <img src="/images/top_04.jpg"class="img-responsive center-block">
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <img src="/images/content_sj.jpg"class="img-responsive center-block">

        <div class="yii">
            <p  type="text" name="t3">9月历史战绩！这些股，领到的都赚大发了！</p>
        </div>
        <div class="yii_edit" type="edit" name="t4">
            <table border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                        <th>股票名称</th>
                        <th>代码</th>
                        <th>推荐买入价</th>
                        <th>截至日期收盘价</th>
                        <th>收益率</th>
                    </tr>
                    <tr class="red">
                        <td>廊坊发展</td>
                        <td>600149</td>
                        <td>15.3</td>
                        <td>34.12（4月17日）</td>
                        <td>132.27%</td>
                    </tr>
                    <tr>
                        <td>长江投资</td>
                        <td>600119</td>
                        <td>17.61</td>
                        <td>26.98（4月17日）</td>
                        <td>54.26%</td>
                    </tr>
                    <tr>
                        <td>万科A</td>
                        <td>000002</td>
                        <td>20.45</td>
                        <td>25.85（4月17日）</td>
                        <td>31.42%</td>
                    </tr>
                    <tr>
                        <td>嘉凯城</td>
                        <td>000918</td>
                        <td>9.05</td>
                        <td>11.84（4月17日）</td>
                        <td>34.24%</td>
                    </tr>
                    <tr>
                        <td>名家汇</td>
                        <td>300506</td>
                        <td>21</td>
                        <td>45.98（4月22日）</td>
                        <td>136.05%</td>
                    </tr>
                    <tr class="bot">
                        <td>中航资本</td>
                        <td>600705</td>
                        <td>5.84</td>
                        <td>7.14（4月22日）</td>
                        <td>25.26%</td>
                    </tr>
                </tbody></table>
        </div>
    </div>
</div>
<div class="row">
    <div class="top5">
        <div class="col-md-12">
            <img src="/images/content_06.jpg"class="img-responsive center-block">
            <div class="txt_1" type="edit" name="t5">
                <p class="h1">高手布局  4月潜力牛股</p>
                <p class="h4"> 4月第一批牛股已送出，名额有限，欲领从速</p>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="top3_7">
        <div class="col-md-12">
            <img src="/images/content_07.jpg"class="img-responsive center-block">
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <img src="/images/content_08.jpg"class="img-responsive center-block">
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <img src="/images/content_09.jpg"class="img-responsive center-block">
        <div class="txt_2" type="edit" name="t5">
            <p class="h1">这3只股已经跌无可跌，即将爆发</p>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <img src="/images/content_10.jpg"class="img-responsive center-block" onclick="myshow()">
        <div class="minge" type="edit" name="t5">
        <p class="h1">已有<span id="num" class="yellor">451</span>人 领取</p>
        <div class="minge1" type="edit" name="t5">
        <p class="h1" >仅剩<span id="num2" class="yellor">168</span>名额</p>
        </div>
        </div>
    </div>
</div>

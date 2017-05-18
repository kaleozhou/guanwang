@extends('layouts.master')
@section('title')
{{ $page->title }} | @parent
@stop
@section('meta')

<meta name="title" content="{{ $page->meta_title}}" />
<meta name="description" content="{{ $page->meta_description }}" />
<link rel="stylesheet" type="text/css" href="/css/index.css">
<link rel="stylesheet" type="text/css" href="/css/common.css">
<link href="/css/main.css" rel="stylesheet" type="text/css">
@stop
@section('content')
<div class="mianContent">
    <!---main-->
    <div id="main">     
        <div class="mid-box">
            <div class="main-middle">
                <div class="kong"></div>
                <div class="mainTop">
                    <div class="imPc">
                        <ul class="downloadNow">
                            <li><a href="http://web.95105899.com" target="_blank" class="d1"></a></li>
                            <li>使用google浏览器达到最佳效果<a href="http://www.google.cn/intl/zh-CN/chrome/browser/?installdataindex=chinabookmarkcontrol&amp;brand=CHUN" target="_blank">点击下载</a></li>
                        </ul>
                    </div>
                    <div class="imIp">             
                        <span class="downloadFree"><a href="https://itunes.apple.com/cn/app/id581816798?mt=8" target="_blank" class="d1"></a></span><!--href="https://itunes.apple.com/app/id581816798?mt=8"-->
                    </div>  
                    <div class="imAn">
                        <span class="downloadFree"><a href="javascript:void(0);" class="d2" id="da2"></a></span>
                        <!--<span class="downloadFree"><a href="http://as.baidu.com/a/item?docid=6124588&pre=web_am_se&qq-pf-to=pcqq.c2c" class="d4" id="da3" target="_blank"></a></span>	-->
                    </div>          
                </div>                   
                <div class="mainMid">  
                    <div class="mfBtn" id="pcBtn">
                        <div class="bLeft"></div><div class="bMId"><div class="btnImg"><a href="javascript:void(0)" class="b1"></a></div></div>
                        <div class="bLine one"></div>
                    </div> 
                    <div class="mfBtn" id="ipBtn">
                        <div class="bMId" id="m2"><div class="btnImg"><a id="iphonebtn" href="#iphone" class="b2"></a></div></div>
                        <div class="bLine two"></div>
                    </div> 
                    <div class="mfBtn" id="anBtn">
                        <div class="bMId" id="m3"><div class="btnImg"><a id="androidbtn" href="#android" class="b3"></a></div></div>
                        <div class="bR"></div>
                    </div>  
                </div>
                <div class="mainbottom">
                    <div class="gyimg">
                        <ul>
                            <li class="mtOne"><a href="apply.html#one" class="a1"></a><p><span>个股强弱</span>自有定夺</p></li>
                            <li><a href="apply.html#two" class="a2"></a><p><span>买在低点</span>可以实现</p></li>
                            <li><a href="apply.html#three" class="a3"></a><p style="padding-left:10px;"><span>关键买卖</span>决定成败</p></li>
                        </ul>
                    </div>
                </div>         
            </div>
        </div>
        <iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe></div>
    <!--end main-->
</div>    
</div>
<!--end footer-->
</div>
<script type="text/javascript" src="/js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="/js/index.js"></script>
<script type="text/javascript">
$(".bodybg").height($(document).height());
function showDiv(){
    $(".bodybg").show();
    $(".login").show();	
}
$(function() {		
    $('.hideDiv').click(function(){
        $(".bodybg").hide();
        $(".login").hide();
        $("#tip1").hide();
    });
    $('#d2').click(function(e){
        e.stopPropagation();
        $(".login").removeClass("down1").removeClass("down2");
        $(".login").addClass("down");
        showDiv();
        $("#dxlinkDown").attr("href", "ftp://61.164.40.152/yqs2013.exe");
        $("#wtlinkDown").attr("href", "ftp://221.12.6.242/yqs2013.exe");
        $("#ttlinkDown").attr("href", "ftp://222.46.19.216/yqs2013.exe");
        return false;
    });
    $('#d3').click(function(e){
        $("#tip1").show();
        $(".bodybg").show();
        return false;
    });
    $('.imAn a#da2').click(function(e){
        e.stopPropagation();
        $(".login").removeClass("down").removeClass("down1");
        $(".login").addClass("down2");
        showDiv();
        $("#dxlinkDown").attr("href", "http://yqs.95105899.com/moneytree_android.apk");
        $("#wtlinkDown").attr("href", "http://yqs.95105899.com/moneytree_android.apk");
        $("#ttlinkDown").attr("href", "http://yqs.95105899.com/moneytree_android.apk");
        return false;
    });
    $('#to-top').click(function() {
        $('html, body').animate({ scrollTop : 0}, 'fast');
        return false;
    });
    $('#to-top1').click(function() {
        $('html, body').animate({ scrollTop : 0}, 'fast');
        return false;
    });
    $('#to-top2').click(function() {
        $('html, body').animate({ scrollTop : 0}, 'fast');
        return false;
    });
    $('#to-top3').click(function() {
        $('html, body').animate({ scrollTop : 0}, 'fast');
        return false;
    });
    $('#to-top4').click(function() {
        $('html, body').animate({ scrollTop : 0}, 'fast');
        return false;
    });
    $('#to-top5').click(function() {
        $('html, body').animate({ scrollTop : 0}, 'fast');
        return false;
    });
});
</script>
@stop

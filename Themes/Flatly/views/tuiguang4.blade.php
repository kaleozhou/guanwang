<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        @section('meta')
        <meta name="description" content="@setting('core::site-description')" />
        @show
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>
            @section('title')@setting('core::site-name')@show
        </title>
        <link rel="shortcut icon" href="{{ Theme::url('favicon.ico')  }}">
        <script src="/js/jquery-1.8.0.min.js" type="text/javascript"></script>
        <link href="/css/layerbox.css" rel="stylesheet" type="text/css">
        <link href="/css/tuiguang3.css" rel="stylesheet" type="text/css">
        <link href="/css/footer.css" rel="stylesheet" type="text/css">
        {!! Theme::style('css/main.css') !!}

        <link href="http://img.jmd.8imgs.com/skin/css/Common.css" rel="stylesheet"
                                                                  type="text/css" />
        <style type="text/css">
.link1 {
    display:block;
    cursor:pointer;
    width:272px;
    height:77px;
    margin-left:390px;
    margin-top:25px;
}
.link2 {
    display:block;
    cursor:pointer;
    width:272px;
    height:77px;
    margin-left:375px;
    margin-top:211px;
}
.link3 {
    display:block;
    cursor:pointer;
    width:272px;
    height:77px;
    margin-left:375px;
    margin-top:240px;
}
.link4 {
    display:block;
    cursor:pointer;
    width:208px;
    height:61px;
    margin-left:110px;
    margin-top:255px;
}
.link5 {
    display:block;
    cursor:pointer;
    width:208px;
    height:61px;
    margin-left:560px;
    margin-top:290px;
}
.link6 {
    display:block;
    cursor:pointer;
    width:208px;
    height:61px;
    margin-left:90px;
    margin-top:265px;
}
.link7 {
    display:block;
    cursor:pointer;
    width:272px;
    height:77px;
    margin-left:370px;
    margin-top:140px;
}
.pulse {
    animation-name: pulse;
    animation-duration: 1s;
    animation-timing-function: linear;
    animation-delay: 0s;
    animation-iteration-count: infinite;
    animation-fill-mode: both;
    /* Safari and Chrome: */
    -webkit-animation-name: pulse;
    -webkit-animation-duration: 1s;
    -webkit-animation-timing-function: linear;
    -webkit-animation-delay: 0s;
    -webkit-animation-iteration-count: infinite;
}
                         @-webkit-keyframes pulse {
                             0% {
                                 -webkit-transform: scale(1);
                             }
                             50% {
                                 -webkit-transform: scale(0.9);
                             }
                             100% {
                                 -webkit-transform: scale(1);
                             }
                         }
                         @-moz-keyframes pulse {
                             0% {
                                 -moz-transform: scale(1);
                             }
                             50% {
                                 -moz-transform: scale(0.9);
                             }
                             100% {
                                 -moz-transform: scale(1);
                             }
                         }
                         @-ms-keyframes pulse {
                             0% {
                                 -ms-transform: scale(1);
                             }
                             50% {
                                 -ms-transform: scale(0.9);
                             }
                             100% {
                                 -ms-transform: scale(1);
                             }
                         }
                         @-o-keyframes pulse {
                             0% {
                                 -o-transform: scale(1);
                             }
                             50% {
                                 -o-transform: scale(0.9);
                             }
                             100% {
                                 -o-transform: scale(1);
                             }
                         }
                         @keyframes pulse {
                             0% {
                                 transform: scale(1);
                             }
                             50% {
                                 transform: scale(0.9);
                             }
                             100% {
                                 transform: scale(1);
                             }
                         }
        </style>
    </head>
    <body>
        <div style="background: url('/images/tuiguang4_index_01.jpg') center top no-repeat; height:301px;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_01.jpg') center top no-repeat; height:301px;"> </div>
        </div>
        <div style="background: url('/images/tuiguang4_index_02.jpg') center top no-repeat; height:318px;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_02.jpg') center top no-repeat; height:318px;"> <a class="link1 pulse" target="_blank" > <img alt="" src="/images/tuiguang4_btn1.png" onclick="myshow()"/> </a></div>
        </div>
        <div style="background: url('/images/tuiguang4_index_03.jpg') center top no-repeat; height:367px;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_03.jpg') center top no-repeat; height:367px;"> </div>
        </div>
        <div style="background:#f0ede3;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_04.jpg') center top no-repeat; height:353px;"> <a class="link2 pulse" target="_blank"   > <img alt="" src="/images/tuiguang4_btn1.png" onclick="myshow()"/> </a> </div>
        </div>
        <div style="background:#f3f3f3;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_05.jpg') center top no-repeat; height:364px;"> <a class="link3 pulse" target="_blank"   > <img alt="" src="/images/tuiguang4_btn1.png" onclick="myshow()"/> </a> </div>
        </div>
        <div style="background: url('/images/tuiguang4_index_06.jpg') center top no-repeat; height:361px;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_06.jpg') center top no-repeat; height:361px;"> <a class="link4 pulse" target="_blank"   > <img alt="" src="/images/tuiguang4_btn2.png" onclick="myshow()"/> </a> </div>
        </div>
        <div style="background: url('/images/tuiguang4_index_07.jpg') center top no-repeat; height:457px;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_07.jpg') center top no-repeat; height:457px;"> <a class="link5 pulse" target="_blank"   > <img alt="" src="/images/tuiguang4_btn2.png" onclick="myshow()"/> </a> </div>
        </div>
        <div style="background:#f3f3f3;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_08.jpg') center top no-repeat; height:397px;"> <a class="link6 pulse" target="_blank"   > <img alt="" src="/images/tuiguang4_btn2.png" onclick="myshow()"/> </a> </div>
        </div>
        <div style="background:#f0ede3;">
            <div class="w1024" style="background: url('/images/tuiguang4_index_09.jpg') center top no-repeat; height:272px;"> <a class="link7 pulse" target="_blank"   > <img alt="" src="/images/tuiguang4_btn1.png" onclick="myshow()"/> </a> </div>
        </div>
        @include('partials.footer')
        {!! Theme::script('js/all.js') !!}
        @yield('scripts')
        <?php if (Setting::has('core::analytics-script')): ?>
        {!! Setting::get('core::analytics-script') !!}
        <?php endif; ?>

    </body>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="/js/layer.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8" src="/js/enco.js"></script>
    <script type="text/javascript" charset="utf-8" src="/js/layerbox.js"></script>
    <script type="text/javascript" src="//s.union.360.cn/147695.js" async defer></script>
</html>


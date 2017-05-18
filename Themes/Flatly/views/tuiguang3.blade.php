<!DOCTYPE html>
<html>
    <head lang="{{ LaravelLocalization::setLocale() }}">
        <meta charset="UTF-8">
        @section('meta')
        <meta name="description" content="@setting('core::site-description')" />
        @show
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>
            @section('title')@setting('core::site-name')@show
        </title>
        <link rel="shortcut icon" href="{{ Theme::url('favicon.ico') }}">
        <script src="/js/jquery-1.8.0.min.js" type="text/javascript"></script>
        <link href="/css/layerbox.css" rel="stylesheet" type="text/css">
        <link href="/css/tuiguang3.css" rel="stylesheet" type="text/css">
        <link href="/css/footer.css" rel="stylesheet" type="text/css">
        {!! Theme::style('css/main.css') !!}
    </head>
<body style="padding-top:0px">
    <div style="margin:0px auto">
        <img src="/images/tuiguang3_01.png" class="img-responsive center-block">
        <img src="/images/tg01_btn.png" class="img-responsive center-blocki btn1" onclick="myshow()">
        <img src="/images/tuiguang1_02.jpg" class="img-responsive center-block">
        <img src="/images/tuiguang1_03.jpg" class="img-responsive center-block">
        <img src="/images/tuiguang1_04.jpg" class="img-responsive center-block">
        <img src="/images/tg01_btn.png" class="img-responsive center-blocki btn2" onclick="myshow()">
        <img src="/images/tuiguang1_05.jpg" class="img-responsive center-block">
        <img src="/images/tg01_btn.png" class="img-responsive center-blocki btn3" onclick="myshow()">
        <img src="/images/tuiguang1_06.jpg" class="img-responsive center-block">
        <img src="/images/tuiguang1_07.jpg" class="img-responsive center-block">
        @include('partials.footer')
        {!! Theme::script('js/all.js') !!}
        @yield('scripts')
        <?php if (Setting::has('core::analytics-script')): ?>
        {!! Setting::get('core::analytics-script') !!}
        <?php endif; ?>
    </div>
</body>

<script src="/js/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8" src="/js/enco.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/layerbox.js"></script>
<script type="text/javascript" src="//s.union.360.cn/147695.js" async defer></script>
</html

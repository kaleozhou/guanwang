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
        <link href="/css/footer.css" rel="stylesheet" type="text/css">
        {!! Theme::style('css/main.css') !!}
    </head>
    <body>
        <div class="container">
            @include('partials.navigation')
            @yield('content')
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
    <!-- v5kf.com -->
    <!=--<script type="text/javascript" charset="utf-8" src="https://www.v5kf.com/142123/v5kf.js"></script>--!>
    <!-- / v5kf.com -->
</html

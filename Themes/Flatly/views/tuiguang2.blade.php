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
        <link href="/css/tuiguang2.css" rel="stylesheet" type="text/css">
        {!! Theme::style('css/main.css') !!}
    </head>
    <body style="padding-top:0px">
        <div class="container">
        <div class="row">
            <div class="col-md-12 banner">
                    <img src="/images/tg02_banner.jpg"class="img-responsive center-block">
                    <img class="downloadNow .img-responsive" src="/images/btn2.png" onclick="myshow()">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/maintopIcon.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-2">
                </div>
                <div class="col-md-8">
                    <img src="/images/wz.png"class="img-responsive center-block">
                </div>
                <div class="col-md-2">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/tl1.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-3">
                        <p>通过估值、资金、技术三大综合条件，对个股的绝对低位进行确定评判。<span class="black Strong">真正做到先知先觉<span class="red">左侧交易买在阶段最低点。</span><iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe></span></p>
                        <p>把握阶段绝对低位，先知先觉买在低点，最终实现左侧交易操作。在波段抄底，超跌反弹应用中<span class="Strong">准确率超过90%！</span></p>
                    </div>
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-4">
                        <img src="/images/al_1.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/title2.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-4">
                        <img src="/images/al_2.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-3">
                        <p>
                        结合全球主流资本市场同行业的平均估值水平，<br>
                        采取不低于20年的平均估值进行动态参数设置，<br>
                        综合考虑行业所处不同发展阶段，
                        </p>
                        <p>
                        自上而下的将
                        <span class="red Strong">
                            大盘、行业指数、个股的价值中枢、安全边际、<br>
                            风险警戒
                        </span>一目了然的呈现出来，<br>
                        <span class="black Strong">让交易真正成为有的放矢的投资，</span>而非投机或赌博。
                        </p>
                        <p><span class="downloadNow"><a href="javascript:void(0);" onclick="showDiv();" class="dl2"></a></span></p>
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/title3.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-3">
                        <p>
                        分析机构账户、700余私募账户及中小散户的交易方向，
                        云计算技术在盘中不间断的进行动态加权统计，得出分值，
                        ±10分以上对短线方向和力度产生影响，
                        </p>
                        <p style="margin-top:29px;">
                        <span class="black Strong">主要是识别资金未来行为动机，</span>
                        其中包含：<span class="red Strong">散户跟风、私募补仓、机构拉伸、</span>
                        <span class="green Strong">散户出逃、私募打压、机构杀跌。</span>
                        </p>
                    </div>
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-4">
                        <img src="/images/al_3.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/title4.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-5">
                        <img src="/images/al_4.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-3">
                        <p>
                        摇钱术独创供求资金系统，不单研究已经成交的主力资金，
                        更进一步对所有挂单未成交数据进行深度统计清洗，
                        <span class="red Strong">让投资者进一步了解未来资金操作意图和方向，</span>
                        </p>
                        <p>
                        其实战应用价值及对目标品种未来趋势判断的准确度，
                        远超单纯研究主力资金，是先知先觉捕获龙头领涨行业、
                        锁定龙头股的必备数据。
                        </p>
                        <p>
                        供求资金将未来资金行为动机更加直观的展现给用户。
                        <span class="red Strong">红色填充区意为资金行为做多力度强于做空力度；</span>
                        <span class="green Strong">绿色填充区意为资金行为做空力度大于做多力度。</span>
                        </p>
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/title5.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/al_5.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-2">
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4">
                    <p style="margin-top: 30px;">
                    综合考量<span class="red Strong">技术、估值、资金</span>三方面对股价<br>
                    的影响，应用动态参数决策系统在不同时期对证券市场所有品种<br>
                    打出综合分值。<span class="Strong">是综合选股必备利器。</span>
                    </p>
                </div>
                <div class="col-md-2">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/newtt_1.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="newtxt">全国首创三色K线，助你把握机会规避风险。四大决策系统共同作用，对量价时空进行综合分析，越跌越买，最终实现买在低点。在波段抄底、超跌反弹应用中准确率超过90%！</div>
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top2">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/stock1_img.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top2">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
                        <img src="/images/newtg_11.jpg"class="img-responsive center-block">
                        <div class="news_1">
                            <p>投资者在市场当中最容易犯的大忌就是：追涨杀跌。就这一忌，足已让无数投资者常套深渊里面，无法自拔。</p>
                        </div>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/newtt_3.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top2">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <div class="newtxt">摇钱术特有价值分析体系，及时捕捉因市场非理性抛售、估值严重低于行业平均水平的潜力个股，助你快速锁定股价过度下跌、亟待反弹的龙头股，助你赚钱超额投资收益！</div>
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top2">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/stock2_img.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-8">
                        <img src="/images/title6.png"class="img-responsive center-block">
                    </div>
                    <div class="col-md-2">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="top5">
                    <div class="col-md-2">
                        <img src="/images/zs1.png"class="img-responsive center-block"alt="">
                    </div>
                    <div class="col-md-2">
                        <img src="/images/zs2.png"class="img-responsive center-block"alt="">
                    </div>
                    <div class="col-md-2">
                        <img src="/images/zs3.png"class="img-responsive center-block"alt="">
                    </div>
                    <div class="col-md-2">
                        <img src="/images/zs4.png"class="img-responsive center-block"alt="">
                    </div>
                    <div class="col-md-2">
                        <img src="/images/zs5.png"class="img-responsive center-block"alt="">
                    </div>
                    <div class="col-md-2">
                        <img src="/images/zs6.png"class="img-responsive center-block"alt="">
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
            </div>
        </div>
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
    <script type="text/javascript" charset="utf-8" src="https://www.v5kf.com/142123/v5kf.js"></script>
    <!-- / v5kf.com -->
</html


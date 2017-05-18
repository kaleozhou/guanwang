@extends('layouts.master')
@section('title')
{{ $page->title }} | @parent
@stop
@section('meta')
<!-- 本页面 -->
<meta name="keywords" content="牛客财经,汇正财经,广州汇正,上海牛客,牛客,牛客官网,炒股知识,炒股学习,金融培训,证券投资,证券投资顾问,炒股讲座视频">
<meta name="description" content="牛客财经——广州汇正财经顾问有限公司旗下品牌。牛客财经是证监会首批颁发认证的专业投资咨询机构，中国投资者最信赖的金融实战培训平台，专业的金融投资、证券投资、在线股票投资学习网站。">
<!-- 页面私有css -->
<script type="text/javascript" async="" defer="" src="//piwik.niuke.cn/piwik.js"></script><script src="https://hm.baidu.com/hm.js?9b97bf8c9fa8ba16b3ae8798d7f35599"></script><script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=414417"></script><link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_32.css?v=4413acf0.css">

<meta name="title" content="{{ $page->meta_title}}" />
<meta name="description" content="{{ $page->meta_description }}" />
@stop
@section('content')
<div class="banner">
    <a href="javascript:;" class="img_prev"></a>
    <a href="javascript:;" class="img_next"></a>
    <div class="bannerShow">
        <ul>
            <li style="display: none;"><a href="http://cdn.niuke.cn/html/pc170113/index.html" target="_blank"><img src="http://static.niuke.cn/uploads/recommendBanner/2017-01-12/20170112173442_553.jpg"><iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe></a></li>
            <li style="display: list-item;"><a href="http://cdn.niuke.cn/html/app_down/index.html" target="_blank"><img src="http://static.niuke.cn/uploads/recommendBanner/2017-01-09/20170109194805_705.jpg"></a></li>
        </ul>
    </div>
    <div class="focus">
        <p class="focus_m clear" style="width: 46px;"><a href="javascript:;" class=""></a><a href="javascript:;" class="s_on"></a></p>
    </div>
</div>
<div class="information layout clear">
    <div class="information_title">
        <div class="information_title_left">
            <h3 style="margin-top:0px">资讯精选</h3>
        </div>
        <div class="information_title_right">
            <h3>牛客产品</h3>
        </div>
    </div>
    <div class="Infmt_play_img  ">
        <div class="play_img_box">
            <a href="/nkzx/9268" style="display: none;"><img src="http://static.niuke.cn/uploads/information/information/2017-04-10/LW0frUA16fgc_phpUHch5N.jpg" alt=""></a>
            <a href="/nkzx/9349" style="display: none;"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/8gbJvM8V8JxE_phpPTyVpB.jpg" alt=""></a>
            <a href="/nkzx/9336" style="display: none;"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/nVCtC2Aj7CBt_phpm0I92D.jpg" alt=""></a>
            <a href="/nkzx/9328" style="display: none;"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/NwtYbdKeQkM5_php4SD59l.jpg" alt=""></a>
            <a href="/nkzx/9323" style="display: inline;"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/6N6iRkiGFSeG_phphHxoyv.jpg" alt=""></a>
        </div>
        <div class="Infmt_top_icon">财经头条</div>
        <div class="list_nav">
            <h4>
                <span style="display: none;">国家发改委：深圳卫计委药品集团采购违反反垄断法</span>
                <span style="display: none;">联通领衔揭幕混改大戏 第二批央企混改试点酝酿中</span>
                <span style="display: none;">2017中国名人商业价值排行榜范冰冰第一 鹿晗杨幂胡歌进前十</span>
                <span style="display: none;">个税配套改革将加速推进 推动建立税收管理信息系统</span>
                <span style="display: inline;">创业板过会存量已消化 “即审即发”时代渐近？</span>
            </h4>
            <p class="list_nav_a" style="width: 95px;"><a href="javascript:;" class=""></a><a href="javascript:;" class=""></a><a href="javascript:;" class=""></a><a href="javascript:;" class=""></a><a href="javascript:;" class="s_on"></a></p>
        </div>
    </div>
    <div class="information_right">
        <div class="information_right_product">
            <div class="information_product  information_product_red ">
                <div class="information_product_left">
                    <img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221222_478.jpg" alt="">
                </div>
                <div class="product_information">
                    <h3>短线掘金</h3>
                    <p class="product_information_text">以市场为主导，事件为核心，资金、筹码为根本，三维立体选股模型把握股市命脉。</p>
                    <div class="product_information_btn">
                        <p class="nummber_p"><i></i><span>26987</span>位牛客已加入</p>
                        <a href=" /dxjj#indexRight " class="dinyue_btn">查看更多</a>
                    </div>
                </div>
            </div>
            <div class="information_product ">
                <div class="information_product_left">
                    <img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221539_907.jpg" alt="">
                </div>
                <div class="product_information">
                    <h3>股海擒牛</h3>
                    <p class="product_information_text">以价值投资为理念，紧跟趋势，挖掘潜力股，在稳健盈利的基础上精准把握市场脉搏。</p>
                    <div class="product_information_btn">
                        <p class="nummber_p"><i></i><span>5923</span>位牛客已加入</p>
                        <a href=" /ghqn#indexRight " class="dinyue_btn">查看更多</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="product_class">
            <div class="product_class1">
                <p>专业荐股</p>
                <span>每开盘推荐牛股</span>
            </div>
            <div class="product_class2">
                <p>金牌诊股</p>
                <span>股市大咖在线诊股</span>
            </div>
            <div class="product_class3">
                <p>金色两点半</p>
                <span>VIP专享</span>
            </div>
        </div>
    </div>
</div>
<div class="exploits layout clear">
    <div class="exploits_title">
        <h3>牛客战绩</h3>
        <!-- <a href="#">更多>></a> -->
    </div>
    <div class="exploits_class  marginL_0 ">
        <div class="exploits_class_left">
            <div class="exploits_circle circle">
                <div class="mark"><span>35.43</span><i>%</i></div>
            </div>
            <p>最高收益率</p>

        </div>
        <div class="exploits_class_right">
            <p>首创股份（600008）</p>
            <p class="exploits_class_text">牛股600008首创股份，3个交易日最大涨幅达35.43%</p>
            <p class="exploits_class_date">买入日期：<span>04-07</span></p>
        </div>
    </div>
    <div class="exploits_class ">
        <div class="exploits_class_left">
            <div class="exploits_circle circle">
                <div class="mark"><span>17.71</span><i>%</i></div>
            </div>
            <p>最高收益率</p>

        </div>
        <div class="exploits_class_right">
            <p>大连港（601880）</p>
            <p class="exploits_class_text">牛股601880大连港，2个交易日最大涨幅达17.71%</p>
            <p class="exploits_class_date">买入日期：<span>03-29</span></p>
        </div>
    </div>
    <div class="exploits_class ">
        <div class="exploits_class_left">
            <div class="exploits_circle circle">
                <div class="mark"><span>17.98</span><i>%</i></div>
            </div>
            <p>最高收益率</p>

        </div>
        <div class="exploits_class_right">
            <p>湖南天雁（600698）</p>
            <p class="exploits_class_text">牛股600698湖南天雁，4个交易日最大涨幅达17.98%</p>
            <p class="exploits_class_date">买入日期：<span>03-24</span></p>
        </div>
    </div>
</div>
<div class="teacher  clear">
    <h3 class="teacher_title layout">老师团队</h3>
    <h4 class="tec_text_top">股海护卫队，为您的投资保驾护航</h4>
    <ul class="layout">
        <li class="tec_text_left">实战经验丰富，各有所长。捕捉热点、技术分析、行业研究、量化建模、公司实地调研，在各取所长的情况下，为用户制定个性化投资方案。</li>
        <li class="tec_text_c">金融领域的佼佼者，来自海内外知名院校的硕士、博士；</li>
        <li class="tec_text_r">曾是金字塔顶端的行业研究专家、分析师、操盘手，而今聚于牛客，只为股民谋利；</li>
    </ul>
</div>
<div class="company_qct layout">
    <div class="company_qct_title">
        <h3>公司资质</h3>
        <p>牛客母公司广州汇正财经顾问有限公司是中国证监会批准成立证券投资咨询机构，</p>
        <p class="cl_0e80d0">是中国证券业协会的会员单位。</p>
    </div>
    <div class="company_qct_playImg" id="posterTvGrid86804" style="width: 1165px; height: 545px; position: relative;"><div class="posterTvGrid"><div class="bottomNav"><div class="bottomNavButtonOFF" ref="1"></div><div class="bottomNavButtonOFF" ref="2"></div><div class="bottomNavButtonOFF bottomNavButtonON" ref="3"></div></div><div class="bannerControls"> <div class="leftNav" style="display: block;"></div> <div class="rightNav" style="display: block;"></div> </div><div style="width: 1165px; height: 545px;"><div class="contentHolderUnit" ref="1" id="contentHolderUnit1" style="width: 830px; height: 100px; opacity: 0; left: -830px; z-index: 0; margin-top: 85px;"><a href="" target="" class="elementLink"></a><img src="http://www.niuke.cn/static/images/home/3d_1.jpg?v=1484013382" alt=""><span class="elementOverlay" style="opacity: 0.4;"></span><span class="leftShadow" style="opacity: 0;"></span><span class="rightShadow" style="opacity: 0;"></span></div><div class="contentHolderUnit" ref="2" id="contentHolderUnit2" style="width: 830px; height: 499px; opacity: 1; left: 0px; z-index: 2; margin-top: 23px;"><a href="" target="" class="elementLink"></a><img src="http://www.niuke.cn/static/images/home/3d_3.jpg?v=1484013382" alt=""><span class="elementOverlay" style="opacity: 0.4;"></span><span class="leftShadow" style="opacity: 0;"></span><span class="rightShadow" style="opacity: 0;"></span></div><div class="contentHolderUnit" ref="3" id="contentHolderUnit3" style="width: 830px; height: 545px; opacity: 1; left: 167.5px; z-index: 3; margin-top: 0px;"><a href="" target="" class="elementLink"></a><img src="http://www.niuke.cn/static/images/home/3d_2.jpg?v=1484013382" alt=""><span class="elementOverlay" style="opacity: 0;"></span><span class="leftShadow" style="opacity: 1;"></span><span class="rightShadow" style="opacity: 1;"></span></div><div class="contentHolderUnit" ref="4" id="contentHolderUnit4" style="width: 830px; height: 499px; opacity: 1; left: 335px; z-index: 2; margin-top: 23px;"><a href="" target="" class="elementLink"></a><img src="http://www.niuke.cn/static/images/home/3d_1.jpg?v=1484013382" alt=""><span class="elementOverlay" style="opacity: 0.4;"></span><span class="leftShadow" style="opacity: 0;"></span><span class="rightShadow" style="opacity: 0;"></span></div><div class="contentHolderUnit" ref="5" id="contentHolderUnit5" style="width: 830px; height: 100px; opacity: 0; left: -830px; z-index: 0; margin-top: 85px;"><a href="" target="" class="elementLink"></a><img src="http://www.niuke.cn/static/images/home/3d_3.jpg?v=1484013382" alt=""><span class="elementOverlay" style="opacity: 0.4;"></span><span class="leftShadow" style="opacity: 0;"></span><span class="rightShadow" style="opacity: 0;"></span></div><div class="contentHolderUnit" ref="6" id="contentHolderUnit6" style="width: 830px; height: 100px; opacity: 0; left: -830px; z-index: 0; margin-top: 85px;"><a href="" target="" class="elementLink"></a><img src="http://www.niuke.cn/static/images/home/3d_2.jpg?v=1484013382" alt=""><span class="elementOverlay" style="opacity: 0.4;"></span><span class="leftShadow" style="opacity: 0;"></span><span class="rightShadow" style="opacity: 0;"></span></div></div></div></div>
</div>
@stop


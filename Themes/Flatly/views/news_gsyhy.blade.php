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
						<li><a href="/news/cjtt">财经头条</a></li>
						<li><a href="/news/cjkx">7X24快讯</a></li>
						<li><a href="/news/hsgs">沪深股市</a></li>
						<li><a href="/news/cpbd">操盘必读</a></li>
						<li><a href="/news/tjcj">图解财经</a></li>
						<li class="li_on"><a href="/news/gsyhy">公司与行业</a></li>
						<li><a href="/news/gmxy">股民学院</a></li>
					</ul>
					<div class="list_con">
																					<div class="list_c clear">
																			<a href="/nkzx/9349" class="img_a"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/8gbJvM8V8JxE_phpPTyVpB.jpg" width="210" height="140"></a>
																		<div class="list_txt">
										<h2><a href="/nkzx/9349">联通领衔揭幕混改大戏 第二批央企混改试点酝酿中</a></h2>
										<p class="desc"></p>
										<p class="time">2017-04-11 13:17</p>
									<iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe></div>
								</div>
														<div class="list_c clear">
																			<a href="/nkzx/9336" class="img_a"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/nVCtC2Aj7CBt_phpm0I92D.jpg" width="210" height="140"></a>
																		<div class="list_txt">
										<h2><a href="/nkzx/9336">2017中国名人商业价值排行榜范冰冰第一 鹿晗杨幂胡歌进前十</a></h2>
										<p class="desc"></p>
										<p class="time">2017-04-11 10:26</p>
									</div>
								</div>
														<div class="list_c clear">
																			<a href="/nkzx/9328" class="img_a"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/NwtYbdKeQkM5_php4SD59l.jpg" width="210" height="140"></a>
																		<div class="list_txt">
										<h2><a href="/nkzx/9328">个税配套改革将加速推进 推动建立税收管理信息系统</a></h2>
										<p class="desc">个人所得税改革的配套改革措施将加速推进。包括制定个人收入和财产信息系统建设总体方案，推动建立适应个税改革的自然人税收管理体系，进一步完善个税风险分析系统，以及研究提出配套管理办法等都将在今年推进。</p>
										<p class="time">2017-04-11 09:19</p>
									</div>
								</div>
														<div class="list_c clear">
																			<a href="/nkzx/9323" class="img_a"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/6N6iRkiGFSeG_phphHxoyv.jpg" width="210" height="140"></a>
																		<div class="list_txt">
										<h2><a href="/nkzx/9323">创业板过会存量已消化 “即审即发”时代渐近？</a></h2>
										<p class="desc">随着IPO常态化发行，将会逐渐消化此前经历过数次IPO暂停的企业，类似万通智控这样的企业将会越来越多，IPO时间成本将进一步降低。创业板IPO审核正在迎来“即审即发”的时代。</p>
										<p class="time">2017-04-11 08:53</p>
									</div>
								</div>
														<div class="list_c clear">
																			<a href="/nkzx/9315" class="img_a"><img src="http://static.niuke.cn/uploads/information/information/2017-04-11/TgkaFpvgKc0g_phpI78A98.jpg" width="210" height="140"></a>
																		<div class="list_txt">
										<h2><a href="/nkzx/9315">人民日报评项俊波落马:好戏还没到</a></h2>
										<p class="desc">2017年，金融反腐大年！</p>
										<p class="time">2017-04-11 08:32</p>
									</div>
								</div>
														<div class="list_c clear">
																			<a href="/nkzx/9268" class="img_a"><img src="http://static.niuke.cn/uploads/information/information/2017-04-10/LW0frUA16fgc_phpUHch5N.jpg" width="210" height="140"></a>
																		<div class="list_txt">
										<h2><a href="/nkzx/9268">国家发改委：深圳卫计委药品集团采购违反反垄断法</a></h2>
										<p class="desc"></p>
										<p class="time">2017-04-10 16:22</p>
									</div>
								</div>
																<!--分页-->
						<div class="pageChange">
							<div class="pageCount clear" style="width: 412px;">
								<span class="spanOn">1</span> <a class="ssss" href="http://www.niuke.cn/news/cjtt&amp;page=2">2</a> <a class="ssss" href="http://www.niuke.cn/news/cjtt&amp;page=3">3</a> <a class="ssss" href="http://www.niuke.cn/news/cjtt&amp;page=4">4</a> <a class="ssss" href="http://www.niuke.cn/news/cjtt&amp;page=5">5</a> <a class="ssss" href="http://www.niuke.cn/news/cjtt&amp;page=6">6</a><span>...</span> <a href="http://www.niuke.cn/news/cjtt&amp;page=92">92</a> <a class="page_next" href="http://www.niuke.cn/news/cjtt&amp;page=2">&gt;&gt;</a>							</div>
						</div>
						<!--分页 end-->
					</div>
				</div>
				<!-- right-->
				<div class="news_r">
    <div class="stock_data">
        <ul class="quotationClass"><li><span>上证指数</span><em class=" up red wh">3288.97</em><em class=" red wh1">(0.60%)19.57</em></li><li><span>深证成指</span><em class=" up red wh">10655.79</em><em class=" red wh1">(0.50%)52.52</em></li><li><span>创业板指</span><em class=" up red wh">1917.63</em><em class=" red wh1">(0.27%)5.18</em></li></ul>
    </div>
    <h2>推荐产品</h2>
                <p><a href="/dxjj" class="href_0"><img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221222_478.jpg" width="320" height="180"></a></p>
            <p><a href="/ghqn" class="href_1"><img src="http://static.niuke.cn/uploads/productWeb/2017-02-24/20170224221539_907.jpg" width="320" height="180"></a></p>
            </div>
<input type="hidden" class="quotationToken" value="TSJ0wxdK1WRZOpmNwnTBTkGlM5sMYnEbjB1djhIK">			</div>
		</div>
@stop

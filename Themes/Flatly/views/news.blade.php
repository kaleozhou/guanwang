@extends('layouts.master')
@section('title')
{{ $page->title }} | @parent
@stop
<!-- 本页面 -->
<link rel="stylesheet" type="text/css" href="http://www.niuke.cn/static/css/information/information.css?v=1484013382">
<link rel="stylesheet" type="text/css" href="http://www.niuke.cn/static/css/information/scrollbar-infor.css?v=1484013382">
<!-- 页面私有css -->
<script type="text/javascript" async="" defer="" src="//piwik.niuke.cn/piwik.js"></script><script src="https://hm.baidu.com/hm.js?9b97bf8c9fa8ba16b3ae8798d7f35599"></script><script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=414416"></script><link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_32.css?v=4413acf0.css">
@section('meta')
<meta name="title" content="{{ $page->meta_title}}" />
<meta name="description" content="{{ $page->meta_description }}" />
@stop
@section('content')
<div class="content">
    <div class="w1200">
        <!-- 1-->
        <div class="infor_top clear">
            <!-- left-->
            <div class="infor_top_l">
                <!-- nav & banner-->
                <div class="infor_t clear">
                    <div class="infor_nav">
                        <p class="infor_nav_t">资讯导航</p>
                        <ul>
                            <li><a href="/news/cjtt"><span class="bor_no">财经头条</span></a></li>
                            <li><a href="/news/cjkx"><span>7X24财经快讯</span></a></li>
                            <li><a href="/news/hsgs"><span>沪深股市</span></a></li>
                            <li><a href="/news/cpbd"><span>操盘必读</span></a></li>
                            <li><a href="/news/gsyhy"><span>公司与行业</span></a></li>
                            <li><a href="/news/tjcj"><span>图解财经</span></a></li>
                            <li><a href="/news/gmxy"><span>股民学院</span></a></li>
                        </ul>
                    </div>
                    <div class="infor_banner">
                        <a href="javascript:;" class="infor_prev"></a>
                        <a href="javascript:;" class="infor_next"></a>
                        <ul class="infor_bannerShow" style="width: 6180px;">
                            <li style="display: none;">
                                <a href="/news/9349">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-11/8gbJvM8V8JxE_phpPTyVpB.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>联通领衔揭幕混改大戏 第二批央企混改试点酝酿中</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9336">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-11/nVCtC2Aj7CBt_phpm0I92D.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>2017中国名人商业价值排行榜范冰冰第一 鹿晗杨幂胡...</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9328">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-11/NwtYbdKeQkM5_php4SD59l.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>个税配套改革将加速推进 推动建立税收管理信息系统</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9323">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-11/6N6iRkiGFSeG_phphHxoyv.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>创业板过会存量已消化 “即审即发”时代渐近？</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9315">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-11/TgkaFpvgKc0g_phpI78A98.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>人民日报评项俊波落马:好戏还没到</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: list-item;">
                                <a href="/news/9268">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-10/LW0frUA16fgc_phpUHch5N.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>国家发改委：深圳卫计委药品集团采购违反反垄断法</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9251">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-10/yweyphhkSpe3_php6oY6Um.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>监管摸底银行联合投资 要求管理行上报规模</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9249">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-10/SjKChO0PylCB_phpPNTesk.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>揭秘项俊波与郭文贵、女翻译的那些事</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9237">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-10/YwxobKqXqiUP_php4dK8YP.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>北京楼市走到了新的十字路口 清明成交量大降83%</p>
                                    </div>
                                </a>
                            </li>
                            <li style="display: none;">
                                <a href="/news/9229">
                                    <img src="http://static.niuke.cn/uploads/information/information/2017-04-10/Gxzc8Y8WtxgU_phpXGq2Yf.jpg" width="618" height="417">
                                    <p class="banner_ico"></p>
                                    <div class="banner_con">
                                        <p>网上打新中签率已降至万分之三！</p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <div class="banner_focus">
                            <p class="clear" style="width: 140px;"><a href="javascript:;" class=""></a><a href="javascript:;" class=""></a><a href="javascript:;" class=""></a><a href="javascript:;" class=""></a><a href="javascript:;" class=""></a><a href="javascript:;" class="on"></a><a href="javascript:;"></a><a href="javascript:;"></a><a href="javascript:;"></a><a href="javascript:;"></a></p>
                        </div>
                    </div>
                </div>
                <!-- 沪深股市 & 操盘必读-->
                <div class="infor_b clear">
                    <div class="top_news fl">
                        <div class="top_news_t">
                            <p class="news_t1">沪深股市</p>
                            <a href="/news/hsgs" class="more"></a>
                        </div>
                        <ul class="news_ul">
                            <li class="clear">
                                <a href="/news/9267">• 云计算发展三年行动计划发...</a>
                                <p>2017-04-11 17:24</p>
                            </li>
                            <li class="clear">
                                <a href="/news/9372">• 深V巨震透主力惊人意图...</a>
                                <p>2017-04-11 15:39</p>
                            </li>
                            <li class="clear">
                                <a href="/news/9370">• 新疆架设“空中丝绸之路”...</a>
                                <p>2017-04-11 15:22</p>
                            </li>
                            <li class="clear">
                                <a href="/news/9369">• 区内局势升温 军工AH股...</a>
                                <p>2017-04-11 15:04</p>
                            </li>
                            <li class="clear">
                                <a href="/news/9368">• 两市午后V形反转翻红 粤...</a>
                                <p>2017-04-11 15:03</p>
                            </li>
                            <li class="clear">
                                <a href="/news/9357">• 军工板块逆市拉升 中国有...</a>
                                <p>2017-04-11 14:35</p>
                            </li>
                            <li class="clear lino">
                                <a href="/news/9350">• 中国电信：国际标准助推雄...</a>
                                <p>2017-04-11 13:20</p>
                            </li>
                        </ul>
                    </div>
                    <div class="top_news fr">
                        <div class="top_news_t">
                            <p class="news_t2">操盘必读</p>
                            <a href="/news/cpbd" class="more"></a>
                        </div>
                        <ul class="news_ul">
                            <li>
                                <a href="/news/9363">• 【盘中异动】港口股拉升 珠海港秒板</a>
                                <p>2017-04-11 13:54</p>
                            </li>
                            <li>
                                <a href="/news/9345">• 【午评】国防军工板块异军突起</a>
                                <p>2017-04-11 11:36</p>
                            </li>
                            <li>
                                <a href="/news/9343">• 【盘中异动】雄安概念股持续强势 华夏幸福等17股收获五连板</a>
                                <p>2017-04-11 10:01</p>
                            </li>
                            <li>
                                <a href="/news/9332">• 【机会情报】三主线掘金新区环保</a>
                                <p>2017-04-11 09:25</p>
                            </li>
                            <li>
                                <a href="/news/9327">• 【公告精选】兆易创新：高送转事项遭火速问询，11日临停</a>
                                <p>2017-04-11 09:17</p>
                            </li>
                            <li>
                                <a href="/news/9326">• 【涨停预测】74只股票或涨停 附重大利好消息一览(名单)</a>
                                <p>2017-04-11 09:00</p>
                            </li>
                            <li class="lino">
                                <a href="/news/9325">• 【早盘必读】4月11日证券市场要闻</a>
                                <p>2017-04-11 08:03</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- right 财经快讯-->
            <div class="infor_top_r">
                <div class="i_top_title">
                    <p class="i_top_t"></p>
                    <a href="/news/cjkx" class="more"></a>
                </div>
                <div class="i_top_main ps-container">
                    <div class="i_scroll_main">
                        <ul class="i_scroll_news">
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 15:04 </p>
                                <p class="i_scroll_con">截至收盘，沪深300期指IF1704上涨0.06%，上证50期指IH1704下跌0.16%，中证500期指IC1704上涨0.83%。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 15:03 </p>
                                <p class="i_scroll_con">【市场午后走出V型反转，雄安概念尾盘遭遇巨量砸盘】沪指收报3288.97点，涨0.60%，成交额3266亿。深成指收报10655.79点，涨0.50%，成交额3835亿。创业板收报1917.63点，涨0.27%，成交额917亿。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 15:02 </p>
                                <p class="i_scroll_con">截至15:00，沪股通每日额度130亿元剩余136.34亿元，占比104%。截至15:00，深股通每日额度130亿元剩余127.18亿元，占比97%。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 14:53 </p>
                                <p class="i_scroll_con">河钢股份、华夏幸福开板，但迅速回封。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 14:30 </p>
                                <p class="i_scroll_con">韩国首尔综指收盘下跌0.39%。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 13:40 </p>
                                <p class="i_scroll_con">李克强表示，今年中央政府要研究制定粤港澳大湾区发展规划，将推出内地和香港之间的“债券通”，目的就是进一步密切内地与香港的交流合作，继续为香港发展注入新动能。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 13:34 </p>
                                <p class="i_scroll_con">沪指午后跌幅扩大至0.75%，深成指跌1.2%，创业板跌1.2%。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 13:12 </p>
                                <p class="i_scroll_con">午后军工板块大爆发，龙一中航黑豹、龙二航新科技涨停，龙三中航动力跟涨。</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 12:30 </p>
                                <p class="i_scroll_con">【提醒】日内请重点关注：① 16:30 英国CPI、零售销售指数、未季调输出PPI② 17:00 德国4月ZEW经济景气指数、欧元区2月工业产出③ 18:00 美国3月NFIB中小企业乐观程度指数④ 22:00 美国2月JOLTS职位空缺⑤ 次日01:45 2017年FOMC票委、明尼阿波利斯联储主席卡什卡利Neel Kashkari讲话⑥ 次日04:30 美国石油协会（API）发布行业版原油库存周报&lt;</p>
                            </li>
                            <li>
                                <p class="i_scroll_time"><i class="scroll_on"></i> 11:32 </p>
                                <p class="i_scroll_con">【早间大盘冲高回落，雄安新区、军工涨势强劲】沪指早盘收报3254.24点，跌0.46%，成交额1761亿。深成指早盘收报10541.27点，跌0.58%，成交额2149亿。创业板早盘收报1905.07点，跌0.39%，成交额530亿。</p>
                            </li>
                        </ul>
                    </div>
                    <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 3px; width: 319px; display: none;"><div class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px; height: 800px; display: inherit;"><div class="ps-scrollbar-y" style="top: 0px; height: 468px;"></div></div></div>
            </div>
        </div>
        <!-- 1 end-->
        <!-- 2-->
        <div class="infor_center clear">
            <!-- left-->
            <div class="i_center_l">
                <div class="i_cl_t">
                    <h3 class="i_cl_h3">公司与行业</h3>
                    <a href="/news/gsyhy" class="more"></a>
                </div>
                <ul class="i_cl_ul">
                    <li class="clear">
                        <a href="/news/9253">• 苹果谷歌近日纷纷有大动作 都指向OLED曲面屏(股)</a>
                        <span>2017-04-11 16:42</span>
                    </li>
                    <li class="clear">
                        <a href="/news/9359">• 美国国家航天局参与研发自动驾驶汽车 概念股受关注</a>
                        <span>2017-04-11 15:41</span>
                    </li>
                    <li class="clear">
                        <a href="/news/9362">• 特斯拉屡遭“被建厂” 专家称腾讯入股致传闻发酵</a>
                        <span>2017-04-11 14:49</span>
                    </li>
                    <li class="clear">
                        <a href="/news/9361">• 贵州茅台成全球最大酒业股 中金称看好其市值赶超中石化</a>
                        <span>2017-04-11 14:46</span>
                    </li>
                    <li class="clear">
                        <a href="/news/9358">• 对接高端芯片联盟 传感器产业打造万亿市场规模（附股）</a>
                        <span>2017-04-11 14:27</span>
                    </li>
                    <li class="clear lino">
                        <a href="/news/9360">• 中科院研制国内首台量子计算机 行业前景广阔（受益股）</a>
                        <span>2017-04-11 13:37</span>
                    </li>
                </ul>
            </div>
            <!-- right-->
            <div class="i_center_r">
                <div class="i_cr_t">
                    <h3 class="i_cr_h3">图解财经</h3>
                    <a href="/news/tjcj" class="more"></a>
                </div>
                <ul class="i_cr_ul">
                    <li class="i_cr_li">
                        <div class="i_cr_con">
                            <a href="/news/9371">
                                <img src="http://static.niuke.cn/uploads/information/information/2017-04-11/B6FVFCK9y8yl_phpW5ieUx.png" width="307" height="184">
                                <p class="h_bg"></p>
                                <p class="h_con">【牛客收评】沪指收涨成交量创...<br><em> 2017-04-11 15:31</em></p>
                            </a>
                        </div>
                    </li>
                    <li>
                        <a href="/news/9149">【图解财经】第25期...<span> 2017-04-11 09:21</span></a>
                    </li>
                    <li class="lino">
                        <a href="/news/8708">【图解财经】第24期...<span> 2017-04-11 07:50</span></a>
                    </li>
                </ul>

            </div>
        </div>
        <!-- 2 end-->
        <!-- 3-->
        <div class="infor_bottom">
            <div class="infor_bottom_t">
                <h3 class="i_bt_h3">股民学院</h3>
                <a href="/news/gmxy" class="more"></a>
            </div>
            <div class="infor_bottom_main clear">
                <div class="infor_part">
                    <a href="/news/9351">
                        <img src="http://static.niuke.cn/uploads/information/information/2017-04-11/hqDXCNwKsgYN_phpCnlM9D.jpg" width="257" height="183">
                        <h3>值得牢记的四大卖出法则</h3>
                        <p class="part_desc"></p>
                    </a>
                </div>
                <div class="infor_part">
                    <a href="/news/5937">
                        <img src="http://static.niuke.cn/uploads/information/information/2017-02-21/MUuguh463M8k_phpFCkw0e.jpg" width="257" height="183">
                        <h3>中短线操作的六个要点</h3>
                        <p class="part_desc">大势中线大空间向上走势的配合，如无完美图形、九成把握，严禁逆势操作，否则必遭重创!</p>
                    </a>
                </div>
                <div class="infor_part">
                    <a href="/news/6449">
                        <img src="http://static.niuke.cn/uploads/information/information/2017-03-01/qfORYVYbCaMT_phpt9J5br.jpg" width="257" height="183">
                        <h3>【操盘技巧】高手都是这样...</h3>
                        <p class="part_desc">要想在巧取豪夺、弱肉强食的股市中生存，没有一套嬴利方法技巧和自我保护的纪律是不行的。</p>
                    </a>
                </div>
                <div class="infor_part" style="margin-right: 0px;">
                    <a href="/news/8303">
                        <img src="http://static.niuke.cn/uploads/information/information/2017-03-27/bhTgqtbtIoxF_phpQG9OqP.jpg" width="257" height="183">
                        <h3>【技巧】如何判断股票的正...</h3>
                        <p class="part_desc">是不是正常的回档,要看能不能符合些列两项标准。</p>
                    </a>
                </div>

            </div>
        </div>
        <!-- 3 end-->
    </div>
</div>
@stop

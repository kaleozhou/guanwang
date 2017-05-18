@extends('layouts.master')
@section('title')
{{ $page->title }} | @parent
@stop
@section('meta')
<!-- 本页面 -->
<link rel="stylesheet" type="text/css" href="http://www.niuke.cn/static/css/about_us/about_us.css?v=1491455501">
<!-- 页面私有css -->
<script type="text/javascript" async="" defer="" src="//piwik.niuke.cn/piwik.js"></script><script src="https://hm.baidu.com/hm.js?9b97bf8c9fa8ba16b3ae8798d7f35599"></script><script src="http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=414441"></script><link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_32.css?v=4413acf0.css">
<meta name="title" content="{{ $page->meta_title}}" />
<meta name="description" content="{{ $page->meta_description }}" />
@stop
@section('content')
<div class="nk_help_wrap clear">
    <div class="nk_help_nav">
        <ul>
            <li class="nav_first click_on">
                <a href="javascript:;">顶点简介</a>
            </li>
            <li id="map_box">
                <a href="javascript:;">联系我们</a>
            </li>
            <li>
                <a href="javascript:;">团队介绍</a>
            </li>
        </ul>
    </div>
    <div class="nk_help_main">
        <ul>
            <!-- 关于我们 -->
            <li>
                <div class="title clear">
                    <a class="click_on" href="#">顶点简介</a>
                </div>
                <div class="main">
                    <p>杭州顶点财经网络传媒有限公司（顶点财经）：是一家专业跨媒体财经内容提供商，致力于通过电视、广播、报纸、网站、资讯终端等媒体向投资者实时传递全球金融市场信息。</p><br><p>
                    顶点财经于2005年创立、总部设于杭州，拥有数字电视制作中心、顶点财经网、证券大参考报、摇钱术资讯终端等互为补充的四类产品渠道，为中国证券投资者提供实时财经信息、专业研究报告、实战交易策略以及上市公司数据库等内容，帮助投资者客观、审慎、明确地做出最佳的交易决策。
                    </p><br><p>顶点财经是国内领先的跨媒体财经内容提供商，顶点财经的的旗舰产品“摇钱术智能财经终端”围绕信息检索、事件提醒、数据分析，将资料、新闻、数据、行情软件、多媒体视频和通讯工具前所未有地集中在一个平台上，系统化、立体化的为投资者提供实时资讯服务。
                    </p><br><p>顶点财经的目标客户群是每一个参与中国股市的人，无论从内容抑或形式上，摇钱术智能财经终端所体现出的专注与金融市场共振动的特质，帮助投资者获得更高的操作效率和更多的获利机会。</p>	
                    <span>办公场景：</span><br>          
                    <iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe>
                    <table style="width:100%">
                        <tbody>
                            <tr>
                                <td style="width:50%"><img src="/images/office_01.jpg" alt=""></td>
                                <td style="width:50%"><img src="/images/office_02.jpg" alt=""></td>
                            </tr>
                            <tr>
                                <td style="width:50%"><img src="/images/office_03.jpg" alt=""></td>
                                <td style="width:50%"><img src="/images/office_04.jpg" alt=""></td>
                            </tr>
                            <tr>
                                <td style="width:50%"><img src="/images/office_05.jpg" alt=""></td>
                                <td style="width:50%"><img src="/images/office_06.jpg" alt=""></td>
                            </tr>
                            <tr>
                                <td style="width:50%"><img src="/images/office_07.jpg" alt=""></td>
                                <td style="width:50%"><img src="/images/office_08.jpg" alt=""></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </li>
            <!-- 联系我们 -->
            <li style="display:none">
                <div class="title clear">
                    <a class="click_on" href="#">联系我们</a>
                </div>
                <div class="main">
                    <p>顶点财经是一家专业跨媒体财经内容提供商，致力于通过电视、广播、报纸、网站、资讯终端等媒体向投资者实时传递全球金融市场信息。为投资者提供实时、专业交易策略及上市公司数据库等内容，帮助投资者客观、审慎地做出最佳的交易决策。详情请登陆<a href="http://www.topcj.com">www.topcj.com</a>。</p>
                    <p>
                    公司网站： <a href="http://www.topcj.com">http://www.topcj.com </a><br>
                    地　　址： 杭州滨江区江南大道3880号华荣时代大厦24楼 <br>
                    邮政编码： 310053 <br>
                    电子邮箱： <a href="mailto:top-cj@163.com">top-cj@163.com </a>
                    </p>
                    <p style="display:none;">
                    总　　机： 0571-56118888 <br>
                    　　　　　 0571-56859999 <br>
                    　　　　　 0571-56822888 <br>
                    销　　售： 0571-56195883 <br>
                    　　　　　 0571-56195885 <br>
                    客　　服： 0571-56118992 <br>
                    　　　　　 0571-56118993 <br>
                    　　　　　 0571-56118995 <br>
                    　　　　　 0571-56118996 <br>
                    传　　真： 0571-56118998<br>
                    　　　　　 0571-56195878<br>
                    热　　线： 95105899(免长途)<br><br>
                    </p>
                    <img src="/images/lxdh.gif" alt="">
                    <p>　</p>
                </div>
            </li>
            <!-- 团队介绍 -->
            <li style="display:none">
                <div class="title clear">
                    <a class="click_on" href="#">团队介绍</a>
                </div>
                <div class="main">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/clz.jpg" width="134" height="134"><br>陈林展<iframe id="tmp_downloadhelper_iframe" style="display: none;"></iframe></div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380611010001</span><p>毕业于浙江大学，现为中国证监会注册分析师。16年股海沉浮，尤其是在1999年“5.19”行情中成功阻击网络科技股之后，对市场趋势和市场的“形”与“神”有了相当深刻的了解。曾主笔三元顾问公司的《一剑封喉记》，2002年以来一直活跃在各类证券分析节目第一线，素以轻松、幽默、直白和个性的语言带给投资者对市场直观而敏锐的感觉，以执著、坦诚的真性情向大家诠释市场的喜怒哀乐。在实践中有着良好的大局观，能够敏锐捕捉市场的内在动能变化，一伺战机出现则第一时间闪电切入，该特点尤其善于拦截龙头品种。</p></div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px;"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/rzj.jpg" width="134"><br>任志江</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380613070003</span>
                                        <p align="left">2006年入市，经历8年的股海历练，已经形成独立的投资理念和选股风格，将价值投资和技术操作有机结合，擅长精选具有优秀成长潜力的中小盘股，坚持长线投资波段操作，在技术上，利用通道理论对个股走势的阶段高低点把握也有惊人的准确率。 </p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/wx.jpg" width="134"><br>王玺</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380612070001</span>
                                        <p align="left">大学本科学历，毕业于中国民航飞行学院安全工程专业，擅长基本面选股，挖掘股票内在价值，追求资产收益持续稳健成长。 </p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/hxm.jpg" width="134"><br>胡旭明</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380611040001</span>
                                        <p align="left">老一批资深行业研究员，1995年进入厦华电子做产品设计师，积累五年电子行业设计经历后，2000年进入三元证券投资顾问（顶点前身）做研究员，主要方向为电子信息产业，已经跟踪研究电子信息板块及个股十多年。现已是杭州点财经证券投资顾问有限公司的高级研究员。</p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/zl.jpg" width="134"><br>朱亮</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380613110002</span>
                                        <p align="left">复旦大学本科学历。曾从事多年海外融资和金融讲师等职务。超过10余年股市实战经验，和多年的资本市场深刻看法，造就了稳健沉着的操盘手法和行业思路的解读视角。对于行业信息有敏锐的判断和独特见地。尤其擅长个股多波段的高抛低吸，以及“疑难”股的诊断和捕捉。</p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/qql.jpg" width="134"><br>邱麒麟</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380613110001</span>
                                        <p align="left">国贸专业毕业，经济学学士，5年证券从业经历，磨练中寻找个人思路及方法。擅长从市场运行逻辑及市场情绪判断短期市场涨跌，善于辨别市场板块轮动迹象，精通短线个股买卖点。个人理念：弱水三千，只取一瓢，A股市场机会甚多！</p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/wxy.jpg" width="134"><br>王星宇</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380614050001</span>
                                        <p align="left">08年大学毕业后一直从事于证券行业，既经历过08年的熊市、也经历过09年的牛市，经过在股海中长期的摸爬滚打后，逐渐形成一套独有的价值分析模型，尤其推崇价值投资，认为在股市中赚钱不是放在第一位，而是在保证不亏钱的基础上来形成良性的盈利模式。在研究层面上，对于创新概念的个股有独到的分析。
                                        </p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/yel.jpg" width="134"><br>姚恩琳</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380615090001</span>
                                        <p align="left">金融学本科毕业，经济学学士，多年证券从业经历。研习过江恩、欧奈尔等国内外著名投资者的经典著作，经合实战经验，练就了独有的市场敏锐性和投资操作风格，能精准解读市场行情、洞悉产业趋向，捕捉龙头个股。将价值投资和技术分析有机结合，以稳健的手法中长线多波段的滚动操作来实现资产收益持续稳定成长。
                                        </p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/zxp.jpg" width="134"><br>张晓萍</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380617010001</span>
                                        <p align="left">金融学本科毕业，经济学学士学位，投资风格稳健，思维逻辑严谨，始终把控制风险放在首位。注重国家宏观经济政策、行业政策的变化，擅长行业内各上市公司基本面的分析和判断，采取自上而下的选股思路，筛选出优质个股。个人投资理念：遵循价值投资理念，注重上市公司成长性，在合适的时候买入并持有。
                                        </p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/prr.jpg" width="134"><br>樊荣荣</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380617040002</span>
                                        <p align="left">上证1000点入市进入证券咨询行业，经历几轮牛熊转换，充分熟悉市场运行轨迹。曾多次受邀参与第一财经、湖北卫视、宁夏卫视、安徽卫视等媒体财经类节目担任嘉宾。有丰富的行业经验和市场触觉，基本面研究功底扎实，擅长挖掘中长期价值型投资机会，投资逻辑清晰，从业知名的机构深受中小投资者推崇喜爱。
                                        </p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                            <tr>
                                <td class="fxs">
                                    <div class="fxs-pic"><img src="/images/ypp.jpg" width="134"><br>杨佩佩</div>
                                    <div class="fxs-ifo">岗位：证券投资咨询业务(投资顾问)<br><span>执业证书编号：A0380617040001</span>
                                        <p align="left">多年从事股票、外汇市场投资分析研究，在不断的实践中形成了自己独特分析思路和投资理念，具有丰富的个人实战经验。长期任职于金融机构，具有严谨的风险控制意识。擅长把握趋势行情，结合技术形态的分析及斐波那契线、黄金分割线的应用，从容应对市场波澜。对基本面有自己独到的认知。投资理念：趋势为王。投资风格：短线和波段相结合，以最小的风险获取稳健的收益。 
                                        </p>
                                        <p><br>
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td height="15px"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="/src/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/src/about_us.js"></script>
<script type="text/javascript" src="/src/common.js"></script>
@stop

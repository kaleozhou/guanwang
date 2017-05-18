<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
        <title>恭喜你成为体验客户</title>
        <!-- 引入 WeUI -->
        <link rel="stylesheet" href="http://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css"/>
        <!-- 引入 WeUI -->
    </head>
    <body >
        <div class="page__hd">
            每日限100名
            <h1 class="page__title" style="text-align:center">
                <img src="/images/logo2.png" alt="摇钱术" height="100px" style="margin-top:50px">
                <p class="page__desc">注册即领3只牛股</p>
            </h1>
        </div>
        <div class="weui-toptips weui-toptips_warn js_tooltips" style="display: none;">错误提示</div>
        <div class="weui-cell" style="margin-top:50px">
            <div class="weui-cell__hd"><label class="weui-label">姓名</label></div>
            <div class="weui-cell__bd">
                <input id="name" name="name"class="weui-input" type="text" placeholder="请输入姓名">
            </div>
        </div>
        <div class="weui-cell weui-cell_vcode">
            <div class="weui-cell__hd">
                <label class="weui-label">手机号</label>
            </div>
            <div class="weui-cell__bd">
                <input id="phone" name="phone"class="weui-input" type="tel" placeholder="请输入手机号">
            </div>
            <div class="weui-cell__ft">
                <button class="weui-vcode-btn" onclick="getcode($('#name').val(),$('#phone').val())">获取验证码</button>
            </div>
        </div>
        <div class="weui-cell weui-cell_vcode">
            <div class="weui-cell__hd"><label class="weui-label">验证码</label></div>
            <div class="weui-cell__bd">
                <input id="yzm" name="yzm"class="weui-input" type="number" placeholder="请输入验证码">
            </div>
        </div>
        <div class="weui-btn-area">
            <a class="weui-btn weui-btn_primary" href="javascript:" id="showTooltips" onclick="adduser($('#name').val(),$('#phone').val(),$('#yzm').val())">确定</a>
        </div>
        <div class="weui-footer weui-footer_fixed-bottom">
            <p class="weui-footer__links">
            <a href="http://top4.95105899.com" class="weui-footer__link">摇钱术</a>
            </p>
            <p class="weui-footer__text">Copyright © 2008-2016 顶点财经</p>
        </div>
        <script src="/js/jquery-1.8.0.min.js" type="text/javascript"></script>
        <script src="/js/layer.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript" charset="utf-8" src="/js/enco.js"></script>
        <script src="https://res.wx.qq.com/open/libs/weuijs/1.0.0/weui.min.js"></script>
        <script src="/js/layerbox.js"></script>
    </body>
</html>

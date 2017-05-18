// JavaScript source code
var AdId = 170;
var sessionid = "";
function RecordView(adid) {
    $.getJSON("http://top.95105899.com/Tj/statjson?callback=?", { "rt": Math.random(), "adid": adid, "screenwidth": screen.width, "screenheight": screen.height, "referer": escape(document.referrer) }, function (json) { sessionid = json["seesionid"]; });
}
$(document).ready(function () {
    RecordView(AdId);
    $("#copyright a.mintcode").mouseover(function () {
        $(".mintOut").css({ "background-position": "0px -26px" });
    });
    $("#copyright a.mintcode").mouseout(function () {showDiv
        $(".mintOut").css({ "background-position": "0px 3px" });
    });
    if ($(window).height() <= 600)
    {
        $(".login").css({ "position": "absolute" });
        $(".login").css({ "top": "48%" });
    }
    $("a.nav").click(function () {
        $(this).parents("dl.daohang").find("a.nav").removeClass("on");
        $(this).addClass("on");
    });
    $(".gytopimg .daohang a").click(function () {
        $("#nav dl.daohang").find("a.nav").removeClass("on");
        var className = $(this).attr("class").replace("a", "");
        $("#nav dl.daohang").find("a.nav" + className).addClass("on");
    });
    $("#back").hide();
    $(".bodybg").height($(document).height());
    window.onscroll = function () {
        var winScroll = document.documentElement.scrollTop || document.body.scrollTop;
        if (winScroll == 0) {
            $("#back").hide();
        } else {
            $("#back").show();
        }
    }
    $(".flash span").mouseover(function () {
        $(this).parent().siblings().removeClass("show");
        $(this).parent().addClass("show");
    });

    var cloindex=null;
    $('.d1').click(function(){
        cloindex=layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            skin: 'layui-layer-nobg', //没有背景色
            shadeClose: false,
            offset: '100px',
            area: ['463px', '463px'],
            content: $('.layer_box')
        });
    });
    $(".close_x").click(function(){
        layer.close(cloindex);
    });

});
function showDiv() {
    $(".bodybg").show();
    $(".login").show();
    $('html, body').animate({ scrollTop: 0 }, 'fast');
    return false;
}
function hideDiv() {
    $(".bodybg").hide();
    $(".login").hide();
}
var isGetVCode = false;
var isReg = false;
function getVerificationCode(mobile, username) {
    if (isGetVCode) {
        alert("请勿重复提交！");
        return false;
    }
    else {
        isGetVCode = true;
        $.getJSON("http://top.95105899.com/Tj/getVerificationCode?callback=?", { 'rt': Math.random(), 'mobile': encMe(mobile, keyIV), 'username': username, 'refer': document.referrer, 'adid': AdId, 'sessionid': sessionid }, function (json) {
            var msg = json["message"];
            alert(msg);
        });
    }
}
function getRegUser(mobile, username, regicode) {
    if (!isReg) {
        isReg = true;
        if (username.length > 6) {
            username = "无名氏";
        }
        $.getJSON("http://top.95105899.com/Tj/getRegUser?callback=?", { 'rt': Math.random(), 'mobile': encMe(mobile, keyIV), 'username': username, 'yzm': regicode, 'refer': document.referrer, 'adid': AdId, 'sessionid': sessionid }, function (json) {
            if (json["message"].indexOf("注册成功") >= 0) {
                alert("恭喜您注册成功！账号密码均为" + mobile + "，请及时修改密码，点击确认，立即体验揺钱术正版软件的强大炒股功能。");
                if (window._gsTracker) {
                    _gsTracker.track("/targetpage/regOk");
                }
                top.location = 'http://web.95105899.com/';
            }
            else {
                alert(json["message"]);
            }
        });
    } else {
        alert("请不要重复提交！");
        return false;
    }
}
function adduser(name,phone) {
    //if (!isReg) {
    if (true) {
        isReg = true;
        if (name.length > 6) {
            name = "无名氏";
        }
        $.ajax({
            type: 'POST',
            url: 'http://120.24.159.2/adduserapi',
            data: { name: name, phone: phone},
            success: function(strValue) {
                if(strValue.result)
                {
                    alert('提交成功！');
                    if (window._gsTracker) {
                        _gsTracker.track("/targetpage/regOk");
                    }
                    top.location = 'http://web.95105899.com/doc/downCenter';
                }
                else
                {
                    alert(strValue.result);
                }
            }
        });
    } else {
        alert("请不要重复提交！");
        return false;
    }
}

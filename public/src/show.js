// JavaScript Document
var index = 0;
var isover = false;
function showImg() {
    if (!isover) {
        index++;
        showImgOfIndex(index);
    }
}
function showImgOfIndex(k) {
    var len = $(".menu2>ul>li").length;
    if (k >= len) { index = 0; }
    $(".stocks div.big_bg").css("display", "block").hide().parent().children().eq(index).fadeIn(100);

    $(".menu2>ul>li").removeClass("on");
    $(".menu2>ul>li").eq(index).addClass("on");
}
int = setInterval("showImg()", 5000);
function nfadein() {
    isover = true;
}
function nfadeout() {
    isover = false;
}

function Div(exp1, exp2)
{
    var n1 = Math.round(exp1); //四舍五入
    var n2 = Math.round(exp2); //四舍五入
    
    var rslt = n1 / n2; //除
    
    if (rslt >= 0)
    {
        rslt = Math.floor(rslt); //返回值为小于等于其数值参数的最大整数值。
    }
    else
    {
        rslt = Math.ceil(rslt); //返回值为大于等于其数字参数的最小整数。
    }
    
    return rslt;
}
function pad2(num, n) {
    if ((num + "").length >= n) return num;
    return pad2("0" + num, n);
}
function countDown(time) {
    var end_time = new Date(time).getTime();
    var timer = setInterval(function () {
        var sys_second = (end_time - new Date().getTime()) / 1000;
        if (sys_second > 1) {
            var day = Math.floor((sys_second / 3600) / 24);
            var hour = Math.floor((sys_second / 3600) % 24);
            var minute = Math.floor((sys_second / 60) % 60);
            var second = Math.floor(sys_second % 60);
            $("#li_day").text(pad2(day, 2));//计算天
            $("#li_hour").text(pad2(hour, 2));//计算小时
            $("#li_min").text(pad2(minute, 2));//计算分钟
            $("#li_sec").text(pad2(second, 2));//计算秒杀
        } else {
            clearInterval(timer);
        }
    }, 1000);
}
var starttime = "2015/12/3 0:00:00";
var mystyle = 0;
var isSumbit = false;
function RightTime(vtime) {
    var d2 = new Date();
    var d1 = new Date(Date.parse(vtime));
    if (d2 < d1) {
        return false;
    }
    else {
        return true;
    }
}
function myshow(tag) {
    Tag = tag;
    if (!RightTime(starttime)) {
        alert("活动即将开始，敬请期待！");
    } else {
        $(".qrd").show("fast");
        $('html, body').animate({ scrollTop: 0 }, 'fast');
        return false;
    }
}
function myhide() {
        $(".qrd").hide("fast");
}
var Tag = "web20160620yqs";
$(function () {
    $(".bodybg").height($(document).height());
    if ($.browser.msie && ($.browser.version == "6.0") && !$.support.style && $(window).width() <= 1100) {
        //代码
        $(".big_bg").css("width", "1100px");
    }
    $(".btn").hide();
    $.getJSON("/Json/GetIP?rt=" + Math.random(), function (json) {
        $("#myIP").val(json["ip"]);
        //alert($("#myIP").val());
    });
    var der = "请输入手机号";
    $("#Mobile").focus(function () {
        if ($(this).val() == der) {
            $(this).val('');
        }
    });
    $("#Mobile").blur(function () {
        if ($(this).val() == '' || $(this).val() == der) {
            $(this).val(der);
        }
    });
    $(".menu>ul>li").click(function () {
        $('html, body').animate({ scrollTop: 700 }, 300);
        index = $(this).index();
        showImgOfIndex(index);
    });
    $(".menu2>ul>li").click(function () {
        index = $(this).index();
        showImgOfIndex(index);
    });
    $(".a_left a").click(function () {
        index--;
        showImgOfIndex(index);
    });
    $(".a_right a").click(function () {
        index++;
        showImgOfIndex(index);
    });
});

    function getParameter(name) {
        var paramStr = location.search;
        if (paramStr.length == 0) return null;
        if (paramStr.charAt(0) != '?') return null;
        paramStr = unescape(paramStr);
        paramStr = paramStr.substring(1);
        if (paramStr.length == 0) return null;
        var params = paramStr.split('&');
        for (var i = 0; i < params.length; i++) {
            var parts = params[i].split('=', 2);
            if (parts[0] == name) {
                if (parts.length < 2 || typeof (parts[1]) == "undefined" || parts[1] == "undefined" || parts[1] == "null") return "";
                return parts[1];
            }
        }
        return null;
    }

    $(function () {
        $("#btnSubmit").click(function () {
            var mobile = $('#Mobile').val();
            var reg = /^0?1[34578]\d{9}$/;
            if (!isSumbit) {
                if (!reg.test(mobile)) {
                    alert("请输入你的手机号再提交！");
                    return false;
                }
                else {
                    var mess = "";
                    $.getJSON("http://www.topcj.com/Handler/getuser.ashx?jsoncallback=?", {'rt': Math.random(), 'usercode': encMe(mobile, keyIV), 'Parameter': getParameter('par'), 'ip': $('#myIP').val(), 'answer': mystyle, 'tag': Tag }, function (json) {
                        if (json["message"].indexOf("成功") >= 0) {
                            alert(mess + "恭喜！您已成功预定，预留端口号将免费发送至您手机，请注意查收\n并保持手机畅通，我们的客服人员将尽快与您联系确认！");
                            myhide();
                        }
                        else {
                            alert(json["message"]);
                        }
                    });
                    isSumbit = true;
                };
            }
            else
            {
                alert("请勿重复提交！");
            }
        });
    });

    function SubmitTest(style) {
        //$("#test_Style" + style).css('background-color', '#600');
        if (mystyle > 0) {
            $("#test_Style" + mystyle).removeClass("t_on");
        }
        $("#test_Style" + style).addClass("t_on");
        mystyle = style;
        $(".btn").show();
    }

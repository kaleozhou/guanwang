// JavaScript source code
var os = function() {  
    var ua = navigator.userAgent,  
    isWindowsPhone = /(?:Windows Phone)/.test(ua),  
    isSymbian = /(?:SymbianOS)/.test(ua) || isWindowsPhone,   
    isAndroid = /(?:Android)/.test(ua),   
    isFireFox = /(?:Firefox)/.test(ua),   
    isChrome = /(?:Chrome|CriOS)/.test(ua),  
    isTablet = /(?:iPad|PlayBook)/.test(ua) || (isAndroid && !/(?:Mobile)/.test(ua)) || (isFireFox && /(?:Tablet)/.test(ua)),  
    isPhone = /(?:iPhone)/.test(ua) && !isTablet,  
    isPc = !isPhone && !isAndroid && !isSymbian;  
    return {  
        isTablet: isTablet,  
        isPhone: isPhone,  
        isAndroid : isAndroid,  
        isPc : isPc  
    };  
}();  
var AdId = 175;
var sessionid = "";
var url=window.location.href;
function RecordView(adid) {
    $.getJSON("http://top.95105899.com/Tj/statjson?callback=?", { "rt": Math.random(), "adid": adid, "screenwidth": screen.width, "screenheight": screen.height, "referer": escape(document.referrer) }, function (json) { sessionid = json["seesionid"]; });
}
$(document).ready(function () {
    RecordView(AdId);
});
var isGetVCode = false;
var isReg = false;
function getVerificationCode(mobile, username) {
    if (isGetVCode) {
        layer.alert("请勿重复提交！");
        return false;
    }
    else {
        isGetVCode = true;
        $.getJSON("http://top.95105899.com/Tj/getVerificationCode?callback=?", { 'rt': Math.random(), 'mobile': encMe(mobile, keyIV), 'username': username, 'refer': document.referrer, 'adid': AdId, 'sessionid': sessionid }, function (json) {
            var msg = json["message"];
            layer.alert(msg);
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
                layer.alert("恭喜您注册成功！账号密码均为" + mobile + "，请及时修改密码，点击确认，立即体验揺钱术正版软件的强大炒股功能。");
                top.location = 'http://web.95105899.com/doc/downCenter';
            }
            else {
                layer.alert(json["message"]);
            }
        });
    } else {
        layer.alert("请不要重复提交！");
        return false;
    }
}
var cloindex=null;
$(document).ready(function () {
    $('#linggubtn').click(function(){
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
function myshow(){
    var sUserAgent= navigator.userAgent.toLowerCase(); 
    var bIsIpad= sUserAgent.match(/ipad/i) == "ipad"; 
    var bIsIphoneOs= sUserAgent.match(/iphone os/i) == "iphone os"; 
    var bIsMidp= sUserAgent.match(/midp/i) == "midp"; 
    var bIsUc7= sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4"; 
    var bIsUc= sUserAgent.match(/ucweb/i) == "ucweb"; 
    var bIsAndroid= sUserAgent.match(/android/i) == "android"; 
    var bIsCE= sUserAgent.match(/windows ce/i) == "windows ce"; 
    var bIsWM= sUserAgent.match(/windows mobile/i) == "windows mobile"; 
    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) { 
        strs=url.split("?");
        alert(strs[1]);
        top.location = 'http://top4.95105899.com/mobile1'+'strs[1]';
    }
    else
    {
        cloindex=layer.open({
            type: 1,
            title: false,
            closeBtn: 0,
            skin: 'layui-layer-nobg', //没有背景色
            shadeClose: false,
            offset: '10%',
            area: ['80%'],
            content: $('.layer_box')
        });
    }
}
function getcode(name,phone){
    getVerificationCode(phone,name);

}
function adduser(name,phone,yzm){
    if (phone.length==11){
        $.ajax({
            type: 'POST',
            url: 'http://120.24.159.2/adduserapi',
            data: { name: name, phone: phone,from: url},
            success: function(strValue) {
                if(strValue.result)
                {
                    getRegUser(phone,name,yzm);
                }
                else
                {
                    layer.alert(strValue.result);
                }
            }
        });
    }
    else
    {
        layer.alert('您的手机号码输入有误');
    }
}


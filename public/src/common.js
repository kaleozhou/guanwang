$(function () {
    // 回到顶部
    $(".go_top").click(function () {
        $("html,body").animate({scrollTop:0},500);
    });
    // 判断滚动条高度
    $('.go_top').hide();
    $(window).scroll(function(){
        var _top = $(window).scrollTop();
        if(_top > 100){
            $('.go_top').fadeIn();
        }else{
            $('.go_top').fadeOut();
        }
    });
});
//safe
window.onload =function(){
    var safeText = '<a key ="58b7e559efbfb079aad7e93b" logo_size="83x30" id="ppbVerify" logo_type="common" href="http://www.anquan.org"><script src="//static.anquan.org/static/outer/js/aq_auth.js"></script></a>';
    setTimeout(function(){
        $(".safeLogo").append(safeText);
    },500);
}


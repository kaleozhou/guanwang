$(function () {
  // 大轮播
    $('.banner .bannerShow ul li:eq(0)').show();
    var speed = 5000,iNum = 0;
    var showLi = $('.banner .bannerShow ul li');
    var liLen = showLi.length-1;
    var page_count = showLi.length;

    //µãµã×Ô¶¯Ìí¼Ó
    for( var i=1;i <= page_count; i++){
        $('.focus_m').append('<a href="javascript:;"></a>');
        $('.focus_m a').eq(0).addClass('s_on');
    }
    //µãµã¾ÓÖÐ
    var aWin = $('.banner .focus a').outerWidth(true);
    var aLen = $('.banner .focus a').length;
    var wids = aWin * aLen;
    $('.focus_m').width(wids);

    $('.banner .focus a').bind('click',function(){
        var aIndex = $('.banner .focus a').index(this);
        $(this).addClass('s_on').siblings().removeClass('s_on');
        showLi.eq(aIndex).fadeIn().siblings().fadeOut();
    });

    $('.img_prev').click(function(){
        prevShow();
    });
    $('.img_next').click(function(){
        nextShow();
    });

    function nextShow(){
        var listNum=$('.banner .focus a.s_on').index();
        if(listNum==liLen){
            showLi.hide().eq(0).show();
            $('.banner .focus a').removeClass('s_on').eq(0).addClass('s_on');
        }else{
            showLi.hide().eq(listNum+1).show();
            $('.banner .focus a').removeClass('s_on').eq(listNum+1).addClass('s_on');
        }
    };

    function prevShow(){
        var listNum=$('.banner .focus a.s_on').index();
        if(listNum==0){
            showLi.hide().eq(liLen).show();
            $('.banner .focus a').removeClass('s_on').eq(liLen).addClass('s_on');
        }else{
            showLi.hide().eq(listNum-1).show();
            $('.banner .focus a').removeClass('s_on').eq(listNum-1).addClass('s_on');
        }
    };

    var timer = setInterval(nextShow,speed);
    $('.banner .bannerShow,.banner .focus').hover(function(){
        clearInterval(timer);
    },function(){
        timer = setInterval(nextShow,speed);
    });


    function playImgFun(obj) {
        // 小轮播
    	$(obj.img_list+':eq(0)').show();
    	var speed2 = 3000,iNum = 0;
    	var showLi2 = $(obj.img_list);
    	var liLen2 = showLi2.length-1;
        var page_count2 = showLi2.length;
    	var textlist = $(obj.list_nav).find("h4 span");

    	//µãµã×Ô¶¯Ìí¼Ó
    	for( var i=1;i <= page_count2; i++){
    	    $(obj.list_nav_a).append('<a href="javascript:;"></a>');
    	    $(obj.list_nav_a+' a').eq(0).addClass('s_on');
    	}
    	//µãµã¾ÓÖÐ
    	var aWin = $(obj.list_nav+' a').outerWidth(true);
    	var aLen = $(obj.list_nav+' a').length;
    	var wids = aWin * aLen;
    	$(obj.list_nav_a).width(wids);
    	$(obj.list_nav+' a').bind('click',function(){
    	    var aIndex2 = $(obj.list_nav+' a').index(this);
    	    $(this).addClass('s_on').siblings().removeClass('s_on');
            showLi2.eq(aIndex2).fadeIn().siblings().fadeOut();
    	    textlist.eq(aIndex2).show().siblings().hide();
    	});
	    function nextShow1(){
	        var listNum=$(obj.list_nav+' a.s_on').index();
	        if(listNum==liLen2){
                showLi2.hide().eq(0).show();
	            textlist.hide().eq(0).show();
	            $(obj.list_nav+' a').removeClass('s_on').eq(0).addClass('s_on');
	        }else{
                showLi2.hide().eq(listNum+1).show();
	            textlist.hide().eq(listNum+1).show();
	            $(obj.list_nav+' a').removeClass('s_on').eq(listNum+1).addClass('s_on');
	        }
	    };
	    var timer2 = setInterval(nextShow1,speed2);
	    $(obj.list_nav).hover(function(){
	        clearInterval(timer2);
	    },function(){
	        timer2 = setInterval(nextShow1,speed2);
	    });
    }

    playImgFun({
        img_list:'.Infmt_play_img .play_img_box a',
        list_nav:" .list_nav",
        list_nav_a:".list_nav .list_nav_a"
     });
    $(".exploits_circle").each(function () {
     // 动态饼形图
        var _mark = $(this).find(".mark span");
        var _exploits_circle = $(this);
        var num = parseFloat(_mark.text());
        var data_init = num; 
        var _num = 0;
        var _num2 = 0;
        function change_mark () {   
            _num++;
            _mark.text(_num) ;
            if(_num >= num){
                _num2 = _num/100;
                 _mark.text(data_init) ;
                // _exploits_circle.find('.exploits_semicircle_ccc_left').css('transform', "rotate("+_num2+"turn)");
                window.clearTimeout(timer);
                return;
            } 
            if (_num < 50) {
                _num2 = _num/100;
                // _exploits_circle.find('.exploits_semicircle_ccc').css({'transform':"rotate(" + _num2 + "turn)"});
            } else if(_num == 50){
                _exploits_circle.find('.exploits_semicircle_ccc').hide();
            }else {
                _num2 = _num/100;
                // _exploits_circle.find('.exploits_semicircle_ccc_left').css('transform', "rotate("+_num2+"turn)");
                // $(this).find('.left').css('transform', "rotate(" + (num - 180) + "deg)");
                // $(this).css({"background":"rgb("+color+","+green+","+0+")"});
            };
            var timer = window.setTimeout(change_mark,10);
        }
        change_mark();
    });
    // 牛客服务hover效果
    $(".nk_serve_box").hover(function () {
        $(this).addClass("nk_serve_box_red").siblings(".nk_serve_box").removeClass("nk_serve_box_red");
    })
});

/**
 * Created by Administrator on 2017/1/17.
 */
 var slideIndex  = 1,
    slideIndex1 = 1,
    sliding     = false;
$(function(){

    //一级标题
    var flag= 0;
    $('.nk_help_nav').on('click','li',function(){
        var i = $(this).index();
        $(this).addClass('click_on').siblings('li').removeClass('click_on');
        $('.nk_help_main > ul > li').eq(i).show().siblings('li').hide();
        if(this.id == "map_box" && (isFirefox=navigator.userAgent.indexOf("Firefox")>0 || flag ==0)){
            flag++;
            debugger
            $("#if_id").attr('src',"http://j.map.baidu.com/MYzuj")
        }
    });


    $('#fullpage').fullpage({
        'verticalCentered': false,
        'css3': true,
        'anchors': ['section1', 'section2', 'section3', 'section4','section5','section6','section7','section8'],
        'navigation': true,
        'navigationPosition': 'left',
        'slidesNavigation' : true,
        'slidesNavPosition' : 'bottom',
		onLeave: function(index, nextIndex, direction) {
            if(index == 2 && !sliding) {
                if(direction == 'down' && slideIndex < 2) {
                    sliding = true;
                    $.fn.fullpage.moveSlideRight();
                    slideIndex++;
                    return false;
                } else if(direction == 'up' && slideIndex >1) {
                    sliding = true;
                    $.fn.fullpage.moveSlideLeft();
                    slideIndex--;
                    return false;
                }
            }else if(index == 3 && !sliding) {
                if(direction == 'down' && slideIndex1 < 3) {
                    sliding = true;
                    $.fn.fullpage.moveSlideRight();
                    slideIndex1++;
                    return false;
                } else if(direction == 'up' && slideIndex1 >1) {
                    sliding = true;
                    $.fn.fullpage.moveSlideLeft();
                    slideIndex1--;
                    return false;
                }
            }else if(sliding) {
                return false;
            }
        },

        afterSlideLoad: function(anchorLink, index, slideAnchor, slideIndex) {
            sliding = false;
        }
    });
    $('#fp-nav li:first,#fp-nav li:last').hide();

    var menu = ['','牛客财经','牛客金融研究所','牛客服务团队','牛客投顾团队','联系我们','帮助中心',''];
    $("#fp-nav ul li a").append('<p></p>');
    $("#fp-nav ul li").each(function(i){
        $(this).find('p').text(menu[i]);
    });

    $("#fp-nav").append('<a href="/top" class="back"></a>');
    $('.back').click(function () {
        location.href='/top';
    })
    $(window).resize(function(){
        autoScrolling();
    });

    function autoScrolling(){
        var $hh = $(window).height(),
            $ww = $(window).width();
        if($ww < 1300 || $hh < 730){
            $.fn.fullpage.setAutoScrolling(false);
        } else {
            $.fn.fullpage.setAutoScrolling(true);
        }
    }

    autoScrolling();
});

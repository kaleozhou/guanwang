/**
 * Created by Administrator on 2016/11/16.
 */
$(function(){
    $('#fullpage').fullpage({
        'verticalCentered': false,
        'css3': true,
        anchors: ['section1', 'section2', 'section3', 'section4','section5','section6','section7','section8','section9','section10','section11'],
        'navigation': true,
        'navigationPosition': 'right',
        //afterLoad : function(anchorLink, index){
        //    if(index == 1 || index == 10){
        //        $('#fp-nav').hide();
        //    }else{
        //        $('#fp-nav').show();
        //    }
        //}
    });
    $('#fp-nav li:first,#fp-nav li:last').hide();



    $(window).resize(function(){
        autoScrolling();
        var picWh = $('.sec1_img').height();
        $('.sec1_con').height(picWh);
    });

    function autoScrolling(){
        var $hh = $(window).height(),
            $ww = $(window).width();
        if($ww < 1300 || $hh < 630){
            $.fn.fullpage.setAutoScrolling(false);
        } else {
            $.fn.fullpage.setAutoScrolling(true);
        }
    }

    autoScrolling();

    $('.sec1_img img').load(function(){
        var picWh = $('.sec1_img').height();
        $('.sec1_con').height(picWh);
    });

    // 弹窗方法

    $(".popupBox_btn").click(function () {
        $(".popupBox,.zhezhao1").hide();
    })

})

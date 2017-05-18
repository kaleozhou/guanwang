$(document).ready(function(){
var temp=0;
count = $(".mfBtn").size();	
	var index;
	
	//mid动画
	$(".mfBtn").mouseover(function(){
		index=$(this).index();
		if(temp==index) return;
		if(index==0){
			$("#pcBtn .bMId").css({'background':'url(img/index/images/overRepeat.jpg) repeat-x'});
			$(".btnImg a.b1").css({"background-position":"0px -45px"});
			}else if(index==1){
			$("#ipBtn .bMId").css({'background':'url(img/index/images/overRepeat.jpg) repeat-x'});
			$(".btnImg a.b2").css({"background-position":"0px -48px"});
			}else if(index==2){
			$("#anBtn .bMId").css({'background':'url(img/index/images/overRepeat.jpg) repeat-x'});
			$(".btnImg a.b3").css({"background-position":"0px -52px"});
			}
		});
		
	$(".mfBtn").mouseout(function(){		
		index=$(this).index();
		if(temp==index) return;
		if(index==0){
			$("#pcBtn .bMId").css({'background':'url(img/index/images/outRepeat.jpg) repeat-x'});
			$(".btnImg a.b1").css({"background-position":"0px 0px"});
			}else if(index==1){
			$("#ipBtn .bMId").css({'background':'url(img/index/images/outRepeat.jpg) repeat-x'});
			$(".btnImg a.b2").css({"background-position":"0px 0px"});
			}else if(index==2){
			$("#anBtn .bMId").css({'background':'url(img/index/images/outRepeat.jpg) repeat-x'});
			$(".btnImg a.b3").css({"background-position":"0px 0px"});
			}
	});


	$(".mfBtn").click(function(){
		temp=$(this).index();
		 n = temp;
        if (temp >= count) return;
		$(".btnImg a").css({"background-position":"0px 0px"});
		if(temp==0){
			$(".imPc").animate({
				left:"10px"
				});	 
		 $(".imIp").animate({
				left:"1100px"
				});	
		$(".imAn").animate({
			   left:"1100px"
				}); 
	 $(".btnImg a.b1").css({"background-position":"0px -45px"});
		}
	    else if(temp==1){
			$(".imPc").animate({
				left:"-1100px"
				});	 
		 $(".imIp").animate({
				left:"58px"
				});	
		$(".imAn").animate({
			   left:"1100px"
				}); 
		 $(".btnImg a.b2").css({"background-position":"0px -48px"});
		 }
		 else if(temp==2){	 
		$(".imPc").animate({
				left:"-1100px"
				});	 
		 $(".imIp").animate({
				left:"-1000px"
				});	
		$(".imAn").animate({
			   left:"90px"
				}); 
		$(".btnImg a.b3").css({"background-position":"0px -52px"});
		 }
		 
	});




$(".btm-btm a.mintcode").mouseover(function(){
	$(".mintOut").css({"background-position":"0px -26px"});	
	});
$(".btm-btm a.mintcode").mouseout(function(){
	$(".mintOut").css({"background-position":"0px 3px"});		
	});


var mm=$('.daohang');  //一般只需修改这儿的ID 
var mmc=mm.find('li');  //获取需要高亮的对象，current-menu-item为WordPress自定义导航生成 
//var mml=mmc.position().left;  //高亮对象相对父级元素的左边距
var mml=0;
 
var mmw=mmc.width();  //获取高亮对象的宽
 
mm.append("<span class='back' style='left:"+mml+"px;width:"+mmw+"px'></span>");  //追加滑动样式的html代码，并设定宽度
 
var mmh=mm.find('.back');  //获取滑动对象
 
mm.children('li').hover(function(){  //此导航下li鼠标移上去的事件
 	
	var anm=$(this).position().left==0?0:($(this).position().left+20); 
  //此子项相对父级元素的左边距
 
	var anw=$(this).width();  //此子项的宽度
 
	mmh.animate({left:anm,width:anw},{queue:false,duration:300});  //滑动对象左边距和宽度的自定义动画，300毫秒内触发一次
 
	},function(){  //鼠标移开事件
 
	mmh.animate({left:mml,width:mmw},{queue:false,duration:300});  //滑回
 
});
	
});


	
	

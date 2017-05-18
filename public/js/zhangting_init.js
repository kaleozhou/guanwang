/*
var sourceurl="直接输入网址";
var jmstime=new Date();
//进入页面执行
function jinru(type){
	jmstime=new Date().getTime();
	var sourceurl = document.referrer;
	if(sourceurl==undefined||sourceurl=="")
	{
		sourceurl="直接输入网址";
	}
	var jindata="msTime=1&pageId="+systemConf.id+"&sid="+systemConf.sid+"&refferId="+systemConf.reffer+"&type="+type+"&fanbu=0&source="+sourceurl+"&remark=进入页面";
	geturks(jindata);
}
var fp1 = new Fingerprint();fp1.get();
//加载完成执行
function wancheng(type){
	var sourceurl = document.referrer;
	if(sourceurl==undefined||sourceurl=="")
	{
		sourceurl="直接输入网址";
	}
	var nmstime=new Date().getTime();
	var mstime=nmstime-jmstime;
	var jindata="msTime="+mstime+"&pageId="+systemConf.id+"&sid="+systemConf.sid+"&refferId="+systemConf.reffer+"&type="+type+"&fanbu="+fp1+"&source="+sourceurl+"&remark=加载完成";
	geturks(jindata);
}
//跟踪执行
function genzong(activity,type,remark){
	var jindata="activity="+activity+"&pageId="+systemConf.id+"&sid="+systemConf.sid+"&refferId="+systemConf.reffer+"&type="+type+"&fanbu="+fp1+"&remark="+remark;
	geturks(jindata);
}
function geturks(datajson){
	$.get('http://222.211.83.14:803/api/interface/page-record?'+datajson, function(data, status) {
		var datas=data;
		var statuss=status;
	});
}
*/
$(".yii_template").show();

$(".yii_template").each(function(){
		var name = $(this).attr('name');
		var type = $(this).attr('type');
		
		for(var i=0;i<fieldJson.length;i++){
			if(type == 'logo' && fieldJson[i]['type'] == type){
				$(this).attr('src', homeUrl + fieldJson[i]['content'])
				if(fieldJson[i]['is_lock'] == 1){
					$(this).hide();
				}
				
			}else if(type == 'footer' && fieldJson[i]['type'] == type){
				$(this).html(fieldJson[i]['content']);
				if(fieldJson[i]['is_lock'] == 1){
					$(this).hide();
				}
				
			}else if(name != undefined && name != '' && name == fieldJson[i]['title']){
			
					if(type == 'image'){
						if(fieldJson[i]['content'] != ''){
							var src = fieldJson[i]['content'];
							if(!(src.indexOf("http://") > -1)){
								src = homeUrl +fieldJson[i]['content'];
							}

							$(this).attr('src',src);
						}
						if(fieldJson[i]['is_lock'] == 1){
							$(this).hide();
						}
					}else if(type == 'bg'){
						var src = fieldJson[i]['content'];
						if(!(src.indexOf("http://") > -1)){
							src = homeUrl +fieldJson[i]['content'];
						}

						$(this).css("background-image","url("+src+")")
						$(this).attr("src",src);
						
						if(fieldJson[i]['is_lock'] == 1){
							$(this).hide();
						}
					}
					else{
						$(this).html(fieldJson[i]['content']);
					}
				
			}
		}
		
});

$('.yii_logo').show();

var wx={},qq={};
$(function(){
	if(wqConf!=undefined&&wqConf!=null&&wqConf.length>0){
		wx.number=wqConf[0].weixin;
		wx.qrcode=wqConf[0].qrcode;
		qq.number=wqConf[0].qq;
		qq.links=wqConf[0].link;
		var dates=new Date();
		var minutestr = dates.getMinutes()>9?dates.getMinutes().toString():'0' + dates.getMinutes()
		nowtime=parseFloat((dates.getHours())+"."+minutestr )
		for(var i=0;i<wqConf.length;i++){
			var stimes=parseFloat(wqConf[i].StartTime);
			var etimee=parseFloat(wqConf[i].EndTime);
			if(stimes<=nowtime){
				wx.number=wqConf[i].weixin;
				wx.qrcode=wqConf[i].qrcode;
				qq.number=wqConf[i].qq;
				qq.links=wqConf[i].link;
			}
		}
		$(".wxnumber").html(wx.number)
		$(".wxqrcode").attr("src",homeUrl + wx.qrcode)
		$(".qqnumber").html(qq.number)
		$(".qqlinks").attr("href",qq.links)
	}
});

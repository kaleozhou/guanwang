function post(url, params) {
    var temp = document.createElement("form");
    temp.action = url;
    temp.method = "post";
    temp.style.display = "none";
    for (var x in params) {
        var opt = document.createElement("input");
        opt.name = x;
        opt.value = params[x];
        temp.appendChild(opt);
    }
    document.body.appendChild(temp);
    temp.submit();
    return temp;
}   
function adduser(){
    var i=0;
    var name='';
    var phone='';
    var address='';
    var qq='';
    var weixin='';
    var from='site1';
    if(document.getElementById('name')){
        name=document.getElementById('name').value;
        if (name!='') {i++;};
    }
    if(document.getElementById('phone')){
        phone=document.getElementById('phone').value;
        if (phone!='') {i++;};
    }
    if(document.getElementById('address')){
        address=document.getElementById('address').value;
        if (address!='') {i++;};
    }
    if(document.getElementById('qq')){
        qq=document.getElementById('qq').value;
        if (qq!='') {i++;};
    }
    if(document.getElementById('weixin')){
        weixin=document.getElementById('weixin').value;
        if (weixin!='') {i++;};
    }
    if (i>=2) {
        var params = { name: name, phone: phone, address: address,qq: qq, weixin: weixin};
        post('http://120.24.159.2/adduserapi',params);
    }
}
$(document).ready(function() {
    var options = {
       //target: '#output1',
        // 从服务传过来的数据显示在这个div内部
        beforeSubmit: showRequest,
        // ajax提交之前的处理
        success:  showResponse
            // 处理之后的处理
    };
    $('#form1').submit(function() {
        $(this).ajaxSubmit(options);
        return false; 
        //非常重要，如果是false，则表明是不跳转
        //在本页上处理，也就是ajax，如果是非false，则传统的form跳转。
    });
});
function showResponse(responseText, statusText, xhr, $form) {
    //alert(xhr.responseText+"=="+$form.attr("method")+'status: ' + 
    //statusText + '\n\nresponseText: \n' + responseText);
    if (statusText=='success') {
        alert("您的申请已经提交，工作人员会尽快与您取得联系！");
    }
    //xhr：说明你可以用ajax来自己再次发出请求
    //$form：是那个form对象，是一个jquery对象
    //statusText：状态，成功则为success
    //responseText，服务器返回的是字符串（当然包括html，不包括json）
}
function showRequest(formData, jqForm, options) {
    var queryString = $.param(formData);
    //alert(queryString+"======"+formData.length);
    try{

        for (var i=0; i < formData.length; i++) {

            if (formData[i].name=='phone') {
                var mobile=formData[i].value;
                if(mobile.length==11&&(/^1[3|4|5|8][0-9]\d{4,8}$/.test(mobile)))
                {
                    var res=true;
                }else
                {
                    alert('请输入正确的手机号码');
                    var res=false
                }
            } 
            //alert(formData[i].value+"==============="+formData[i].name);
        }
        //formData是数组，就是各个input的键值map数组
        //通过这个方法来进行处理出来拼凑出来字符串。
        //formData：拼凑出来的form字符串，比如name=hera&password，
        //其实就是各个表单中的input的键值对，
        //如果加上method=XXXX，那也就是相当于ajax内的data。
        var queryString = $.param(formData);
        //jqForm，jquery form对象
        var formElement = jqForm[0];
        //非常重要，返回true则说明在提交ajax之前你验证
        //成功，则提交ajax form
        //如果验证不成功，则返回非true，不提交
    }catch(e){
        alert("您的输入有误！"+e.message);
        var res=false; 
    }
    return res;
}

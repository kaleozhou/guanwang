function adduser(name,phone){
    if (phone.length==11&&(/^1[3|4|5|8][0-9]\d{4,8}$/.test(phone))){
        $.ajax({
            type: 'POST',
            url: 'http://120.24.159.2/adduserapi',
            data: { name: name, phone: phone},
            success: function(strValue) {
                if(strValue.result)
                {
                    layer.alert('提交成功！扫一扫关注公众号马上体验吧！');
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

var app1=new Vue({
    el: '#app',
    data: {
        user: {
            name: '',
            phone: ''
        }
    },
    methods: {
        submit: function() {
            var formData = JSON.stringify(this.user); // 这里才是你的表单数据

            this.$http.post('http://120.24.159.2/adduserapi', formData).then((response) => {
                alert(response);
                // success callback
            }, (response) => {
                // error callback
            });
        }
    }
})


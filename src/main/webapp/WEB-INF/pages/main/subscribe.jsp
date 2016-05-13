<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${path}/resources/js/bootstrap-notify.js"></script>
<div class="newsletter">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <h3>订阅邮件</h3>
                <p>第一时间掌握我们的减价消息</p>
            </div>
            <div class="col-md-7">
                <form role="form" method="post" action="${path}/subscribe" id="sky-form" class="sky-form subscribe-form  assan-newsletter">
                    <div class="row">
                        <div class="col-sm-8">
                            <div class="form-group input">
                                <input type="text" class="form-control subscribe" name="email" id="email" placeholder="输入邮箱号来订阅">
                            </div>
                        </div>
                        <div class="col-sm-4 text-center">
                            <div>
                                <button class="newsletter-btn" name="submit" type="submit">通知我</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--newsletter end-->
<script>
    $(function() {

        var options = {
            icon: 'fa fa-check',
            message: "订阅成功!"
        };
        var settings = {
            animate: {
                enter: 'animated bounceIn',
                exit: 'animated fadeOutRight'
            },
            type: 'success',
            template:
                    '<div data-notify="container" role="alert" class="col-xs-11 col-sm-2 alert alert-{0}" style="margin: 15px 0 15px 0; width: 150px;">\
                        <button type="button" class="close" data-notify="dismiss" style="top:7px;">\
                            <span aria-hidden="true">×</span>\
                            <span class="sr-only">Close</span>\
                        </button>\
                        <span data-notify="icon"></span>\
                        <span data-notify="title">{1}</span>\
                        <span data-notify="message" style="padding-right:15px">{2}</span>\
                        <a href="{3}" target="{4}" data-notify="url"></a>\
                    </div>'
        };
        var failedSettings = {
            animate: {
                enter: 'animated bounceIn',
                exit: 'animated fadeOutRight'
            },
            type: 'danger',
            template:
                    '<div data-notify="container" role="alert" class="col-xs-11 col-sm-2 alert alert-{0}" style="margin: 15px 0 15px 0; width: 250px;">\
                        <button type="button" class="close" data-notify="dismiss" style="top:7px;">\
                            <span aria-hidden="true">×</span>\
                            <span class="sr-only">Close</span>\
                        </button>\
                        <span data-notify="icon"></span>\
                        <span data-notify="title">{1}</span>\
                        <span data-notify="message" style="padding-right:15px">{2}</span>\
                        <a href="{3}" target="{4}" data-notify="url"></a>\
                    </div>'
        };

        $("#sky-form").validate({
            rules:
            {
                email:
                {
                    required: true,
                    email: true
                }
            },
            // Messages for form validation
            messages:
            {
                email:
                {
                    required: '请输入您的邮箱地址',
                    email: '请输入一个有效的邮箱地址'
                },
            },
            // Ajax form submition
            submitHandler: function (form)
            {
                $.ajax({
                    type: 'post',
                    url: '/subscribe',
                    dataType: 'text',
                    data: {email: $('#email').val()},
                    success: function(data) {
                        if (data == "true") {
                            $.notify(options, settings);
                        } else {
                            $.notify({
                                icon: 'fa fa-close',
                                message: data
                            }, failedSettings);
                        }
                    }
                });
            },
            // Do not change code below
            errorPlacement: function (error, element)
            {
                error.insertAfter(element.parent());
            }
        });

    });
</script>
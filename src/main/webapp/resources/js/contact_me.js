$(function() {

    // http://reactiveraven.github.io/jqBootstrapValidation/
    // 把要验证的元素放进来，这样如果为空，validation会阻止提交
    $("input,textarea").jqBootstrapValidation({
        preventSubmit: true,    // 阻止提交如果有内容不符合
        submitError: function($form, event, errors) {
            // additional error messages or events
        },
        submitSuccess: function($form, event) {
            event.preventDefault(); // prevent default submit behaviour
            // get values from FORM
            var name = $("input#name").val();
            var email = $("input#email").val();
            var message = $("textarea#message").val();
            var firstName = name; // For Success/Failure Message
            // Check for white space in name for Success/Fail message
            if (firstName.indexOf(' ') >= 0) {
                firstName = name.split(' ').slice(0, -1).join(' '); // 从第0个元素到第-1个元素
            }
            $.ajax({
                url: "/contact",
                type: "POST",
                data: {
                    name: name,
                    email: email,
                    advice: message
                },
                cache: false,
                success: function() {
                    // Success message
                    $('#success').html("<div class='alert alert-success'>");
                    $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;").append("</button>");
                    $('#success > .alert-success').append("<strong>您的消息已经发送成功,感谢您的支持. </strong>");
                    $('#success > .alert-success').append('</div>');
                    //触发表单的reset清空事件
                    $('#contactForm').trigger("reset");
                },
                error: function() {
                    // Fail message
                    $('#success').html("<div class='alert alert-danger'>");
                    $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;").append("</button>");
                    $('#success > .alert-danger').append("<strong>对不起 " + firstName + ", 刚刚您的操作没有生效，请您再试一次!</strong>");
                    $('#success > .alert-danger').append('</div>');
                    //触发表单的reset清空事件
                    $('#contactForm').trigger("reset");
                },
            })
        },
        filter: function() {
            // 忽略所有不可见的元素
            return $(this).is(":visible");
        },
    });

    $("a[data-toggle=\"tab\"]").click(function(e) {
        e.preventDefault();
        $(this).tab("show");
    });

    /*When clicking on Full hide fail/success boxes */
    $('#name').focus(function() {
        $('#success').html('');
    });
});



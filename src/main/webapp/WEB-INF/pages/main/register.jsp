<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>会员注册_月升酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
</head>
<body>
<jsp:include page="header.jsp"/>

<!--breadcrumb start-->
<div class="breadcrumb-wrapper">
    <div class="container">
        <h1>登录 或 注册 <span>${msg}</span></h1>
    </div>
</div>
<!--end breadcrumb-->

<div class="space-60"></div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="sky-form-login">
                <form action="${path}/register" id="sky-form" method="post" class="sky-form">
                    <h3 class="text-left"><i class="fa fa-user"></i>创建一个新的账户</h3>

                    <fieldset>
                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-user"></i>
                                <input type="text" id="userName" name="userName" placeholder="用户名">
                                <b class="tooltip tooltip-bottom-right">输入用户名</b>
                            </label>
                        </section>

                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-envelope-o"></i>
                                <input type="email" id="email" name="email" placeholder="邮箱地址">
                                <b class="tooltip tooltip-bottom-right">输入一个有效的邮箱地址</b>
                            </label>
                        </section>

                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-lock"></i>
                                <input type="password" name="password" placeholder="密码" id="password">
                                <b class="tooltip tooltip-bottom-right">请记住您的密码</b>
                            </label>
                        </section>

                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-lock"></i>
                                <input type="password" name="password_again" placeholder="密码确认">
                                <b class="tooltip tooltip-bottom-right">请确认您的密码</b>
                            </label>
                        </section>

                        <section>
                            <label class="select">
                                <select name="gender">
                                    <option value="0" selected disabled>性别</option>
                                    <option value="1">男</option>
                                    <option value="2">女</option>
                                    <option value="3">其他</option>
                                </select>
                                <i></i>
                            </label>
                        </section>
                    </fieldset>

                    <fieldset>
                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-user"></i>
                                <input type="text" name="trueName" placeholder="真实姓名">
                                <b class="tooltip tooltip-bottom-right">输入真实姓名</b>
                            </label>
                        </section>
                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-qq"></i>
                                <input type="text" name="qq" placeholder="QQ">
                                <b class="tooltip tooltip-bottom-right">输入QQ号</b>
                            </label>
                        </section>
                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-bank"></i>
                                <input type="text" name="address" placeholder="家庭地址">
                                <b class="tooltip tooltip-bottom-right">输入地址</b>
                            </label>
                        </section>
                        <section>
                            <label class="checkbox"><input type="checkbox" name="terms" id="terms"><i></i>我同意本站的条款</label>
                        </section>
                    </fieldset>
                    <footer>
                        <button type="submit" class="btn btn-skin btn-lg">创建账户</button>
                    </footer>
                </form>


            </div>
        </div><!--col end-->
        <div class="col-md-6">
            <div class="login-register-aside-box">
                <h3>已经有一个账户了!</h3>
                <p>
                    既然已经有了一个账户了，那么赶快使用自己的账户进行登录吧!
                </p>
                <br>
                <a href='login.html' class="btn btn-light-dark btn-lg">立即登录</a>
            </div>
        </div>
    </div>
</div>
<div class="space-60"></div>

<%@include file="footer.jsp"%>
<script type="text/javascript">
    $(function(){

        jQuery.validator.addMethod("checkUserName", function(value, element, param) {
            var reg = /^[a-zA-Z0-9_]{3,16}$/;
            return this.optional(element) || (reg.test(value));
        }, jQuery.validator.format("请输入{0}-{1}位包含数字字母下划线的用户名!"));

        jQuery.validator.addMethod("checkUserNameExist", function(value, element) {
            var isSuccess = false;
            $.ajax({
                type: 'post',
                url: '/check',
                dataType: 'text',
                async: false,   // 一定要加这句 http://stackoverflow.com/questions/2628413/jquery-validator-and-a-custom-rule-that-uses-ajax
                data: {userNameOrEmail: $('#userName').val()},
                success: function(data) {
                    isSuccess = data == "false" ? false : true;
                }
            });
            return isSuccess;
        }, "用户名已注册，请重新输入!");

        jQuery.validator.addMethod("checkEmailExist", function(value, element) {
            var isSuccess = false;
            $.ajax({
                type: 'post',
                url: '/check',
                dataType: 'text',
                async: false,
                data: {userNameOrEmail: $('#email').val()},
                success: function(data) {
                    isSuccess = data == "false" ? false : true;
                }
            });
            return isSuccess;
        }, "邮箱已注册，请重新输入!");

        jQuery.validator.addMethod("checkPassword", function(value, element) {
            var reg = /^[^\s]{6,18}$/;
            return this.optional(element) || (reg.test(value));
        }, "请输入6-18位的有效密码!");

        jQuery.validator.addMethod("checkQQ", function(value, element) {
           var reg = /^[1-9][0-9]{4,}$/;
            return this.optional(element) || (reg.test(value));
        }, "请输入正确的QQ号码!");

        $('#sky-form').validate({
            rules: {
                userName: {
                    required: true,
                    checkUserName: [3, 16],
                    checkUserNameExist: true
                },
                email: {
                    required: true,
                    email: true,
                    checkEmailExist: true
                },
                password: {
                    required: true,
                    checkPassword: true
                },
                password_again: {
                    equalTo: "#password"
                },
                qq: {
                    checkQQ: true
                },
                gender: {
                    required: true
                },
                terms: {
                    required: true
                }
            },
            messages: {
                userName: {
                    required: "请输入您的用户名"
                },
                password: {
                    required: "请输入您的密码"
                },
                email: {
                    required: '请输入您的邮箱地址',
                    email: '请输入一个有效的邮箱地址'
                },
                password_again: {
                    equalTo: "密码输入不一致，请重新输入"
                },
                gender: {
                    required: "请选择您的性别"
                },
                terms: {
                    required: "请同意条款再创建账户"
                }
            },
            errorPlacement: function(error, element) {
                error.insertAfter(element.parent());
            }
        });
    });
</script>
</body>
</html>

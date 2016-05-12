<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>会员登录_月升酒店用品</title>
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
                <form action="${path}/login" id="sky-form" method="post" class="sky-form">

                    <h3 class="text-left"><i class="fa fa-unlock"></i>请用您的账户进行登录</h3>
                    <fieldset>
                        <section>
                            <div class="row">
                                <label class="label col col-4">输入邮箱</label>
                                <div class="col col-8">
                                    <label class="input">
                                        <i class="icon-append fa fa-user"></i>
                                        <input type="email" name="email">
                                    </label>
                                </div>
                            </div>
                        </section>

                        <section>
                            <div class="row">
                                <label class="label col col-4">输入密码</label>
                                <div class="col col-8">
                                    <label class="input">
                                        <i class="icon-append fa fa-lock"></i>
                                        <input type="password" name="password">
                                    </label>
                                    <div class="note"><a href="#sky-form2" class="modal-opener">忘记密码?</a></div>
                                </div>
                            </div>
                        </section>

                        <section>
                            <div class="row">
                                <div class="col col-4"></div>
                                <div class="col col-8">
                                    <label class="checkbox"><input type="checkbox" name="remember" checked><i></i>记住我</label>
                                </div>
                            </div>
                        </section>
                    </fieldset>
                    <footer class="text-right">
                        <a href="${path}/register.html" class="btn btn-link">注册</a>
                        <button type="submit" class="btn btn-lg btn-skin">登录</button>

                    </footer>
                </form><!--login form-->
                <!--找回密码表单 start-->
                <form action="${path}/forgetPassword" id="sky-form2" class="sky-form sky-form-modal">
                    <header>找回密码</header>

                    <fieldset>
                        <section>
                            <label class="label">邮箱地址</label>
                            <label class="input">
                                <i class="icon-append fa fa-envelope-o"></i>
                                <input type="email" name="email" id="email">
                            </label>
                        </section>
                    </fieldset>

                    <footer>
                        <button type="submit" name="submit" class="button">提交</button>
                        <a href="#" class="button button-secondary modal-closer">关闭</a>
                    </footer>

                    <div class="message">
                        <i class="fa fa-check"></i>
                        <p>邮件已发出，请您登录邮箱进行查收!<br><a href="#" class="modal-closer">关闭窗口</a></p>
                    </div>
                </form>
                <!--找回密码表单 end-->
            </div>
        </div><!--col end-->
        <div class="col-md-6">
            <div class="login-register-aside-box">
                <h3>还没有一个账户?</h3>
                <p>
                    点击下面的注册按钮，立即免费注册一个账号吧
                </p>
                <br>
                <a href='/register.html' class="btn btn-light-dark btn-lg">立即注册</a>
            </div>
        </div>
    </div>
</div>
<div class="space-60"></div>
<%@include file="footer.jsp"%>
<script type="text/javascript">
    $(function () {
        $("#sky-form").validate({
            rules:
            {
                email:
                {
                    required: true,
                    email: true
                },
                password:
                {
                    required: true,
                    minlength: 3,
                    maxlength: 20
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
                password:
                {
                    required: '请输入您的密码'
                }
            },
            // Do not change code below
            errorPlacement: function (error, element)
            {
                error.insertAfter(element.parent());
            }
        });

        // Validation for recovery form
        $("#sky-form2").validate({
            // Rules for form validation
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
                }
            },
            // Ajax form submition
            submitHandler: function (form)
            {
                $(form).ajaxSubmit({
                    beforeSend: function ()
                    {
                        $('#sky-form button[type="submit"]').attr('disabled', true);
                    },
                    success: function ()
                    {
                        $("#sky-form2").addClass('submited');
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
</body>
</html>

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
        <h1>登录 或 注册</h1>
    </div>
</div>
<!--end breadcrumb-->

<div class="space-60"></div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="sky-form-login">
                <form action="" id="sky-form" class="sky-form">
                    <h3 class="text-left"><i class="fa fa-user"></i>创建一个新的账户</h3>

                    <fieldset>
                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-user"></i>
                                <input type="text" name="username" placeholder="用户名">
                                <b class="tooltip tooltip-bottom-right">输入用户名</b>
                            </label>
                        </section>

                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-envelope-o"></i>
                                <input type="email" name="email" placeholder="邮箱地址">
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
                                <input type="password" name="passwordConfirm" placeholder="密码确认">
                                <b class="tooltip tooltip-bottom-right">请确认您的密码</b>
                            </label>
                        </section>
                    </fieldset>

                    <fieldset>
                        <div class="row">
                            <section class="col col-6">
                                <label class="input">
                                    <input type="text" name="firstname" placeholder="姓">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="input">
                                    <input type="text" name="lastname" placeholder="名">
                                </label>
                            </section>
                        </div>

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

                        <section>
                            <label class="checkbox"><input type="checkbox" name="subscription" id="subscription"><i></i>我想收到最新的邮件通知</label>
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
</body>
</html>

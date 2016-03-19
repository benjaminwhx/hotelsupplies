<%--
  Created by IntelliJ IDEA.
  User: piqiu
  Date: 16/3/18
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>月升酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/travel-resources.jsp" %>
</head>
<body id="page-top" class="index">

    <!-- 导航菜单 -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Yue Sheng<span>宾馆酒店用品</span></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a href="#services" class="page-scroll">商品</a>
                    </li>
                    <li>
                        <a href="#portfolio" class="page-scroll">简介</a>
                    </li>
                    <li>
                        <a href="#about" class="page-scroll">关于</a>
                    </li>
                    <li>
                        <a href="#team" class="page-scroll">地址</a>
                    </li>
                    <li>
                        <a href="#contact" class="page-scroll">联系方式</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">欢迎来到月升宾馆酒店用品</div>
                <div class="intro-heading">希望您能在这儿挑选到满意的商品</div>
                <a href="#services" class="page-scroll btn btn-xl">挑选商品</a>
            </div>
        </div>
    </header>

    <section id="services">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <ul class="nav">
                        <li>
                            <%--搜索--%>
                            <div class="input-group mysearch">
                                <input type="text" class="form-control">
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default">
                                    <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </li>
                        <!-- 商品分类列表 -->
                        <li>
                            <a href="#sub1" data-toggle="collapse">酒店客房用品<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub1" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;床上用品</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;客房布草</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;保险箱</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;电热水壶</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;客房电话</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;钥匙手牌</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;美容镜</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;垃圾桶</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;防滑垫</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;标示牌</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;酒店用品</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;其他客房布草</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub2" data-toggle="collapse">栏目功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub2" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub3" data-toggle="collapse">产品功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub3" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub4" data-toggle="collapse">新闻功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub4" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub1" data-toggle="collapse">系统功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub1" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub2" data-toggle="collapse">栏目功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub2" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub3" data-toggle="collapse">产品功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub3" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub4" data-toggle="collapse">新闻功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub4" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub1" data-toggle="collapse">系统功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub1" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub2" data-toggle="collapse">栏目功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub2" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub3" data-toggle="collapse">产品功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub3" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub4" data-toggle="collapse">新闻功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub4" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub1" data-toggle="collapse">系统功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub1" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub2" data-toggle="collapse">栏目功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub2" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub3" data-toggle="collapse">产品功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub3" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#sub4" data-toggle="collapse">新闻功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
                            <ul id="sub4" class="collapse nav">
                                <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-9"></div>
            </div>
        </div>
    </section>

    <span class="line"></span>

    <footer>
        <div class="container">
            <div class="row">
                座机: 0523-82939856 传真: 0523-86273766 手机: 13182204990 / 15161065333 / 18752600665 <br/>
                版权所有 月升宾馆酒店用品网 京ICP证010051号通用网址：yueshengjdyp.com <br/>
                Copyright &copy; 2015-2016 yueshengjdyp.com. All Rights Reserved
            </div>
        </div>
    </footer>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ftn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--search toggle form-->
<div class="search-bar">
    <div class="container">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <form>
                    <input type="text" class="form-control" placeholder="餐厅保洁车...">
                    <span class="search-close"><i class="fa fa-times"></i></span>
                </form>
            </div>
        </div>
    </div>
</div>
<!--search toggle form end-->
<!--header start-->
<header class="header">
    <!--top bar-->
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 hidden-xs">
                    <span>欢迎光临月升宾馆酒店用品有限公司，本公司专营各类酒店、宾馆、浴室用品，种类齐全</span>
                </div>
                <div class="col-sm-6 text-right">
                    <ul class="list-inline">
                        <li class="hidden-xs"><a href="${path}/collections.html" class="offers">我的收藏</a></li>
                        <c:choose>
                            <c:when test="${userName != null}">
                                <li><i class="pe-7s-user"></i> ${userName}</li>
                                <li><a class="logout" href="${path}/logout"><i class="pe-7s-close-circle"></i> 注销</a></li>
                            </c:when>
                            <c:otherwise>
                                <li class="hidden-xs"><a href="${path}/register.html"><i class="pe-7s-user"></i> 注册</a></li>
                                <li><a href="${path}/login.html"><i class="pe-7s-lock"></i> 登录</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li class="lang-dropdown">
                            <a href="#"><img src="${path}/resources/img/shopping/flag_cn.jpg" alt=""> 中文 <i class="fa fa-angle-down"></i></a>
                            <div class="lang-drop-menu">
                                <a href="#"><img src="${path}/resources/img/shopping/flag_cn.jpg" alt=""> 中文</a>
                                <a href="#"><img src="${path}/resources/img/shopping/flag_es.png" alt=""> 英文</a>
                            </div>
                        </li>
                        <li><a href="javascript:void(0)" class="search-toggle"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--top bar end-->


    <!--main navigation start-->
    <!-- Static navbar -->
    <nav class="navbar navbar-default navbar-static-top yamm sticky">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${path}/index.html">YueSheng</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <c:forEach items="${category}" var="c">
                        <li class="dropdown yamm-fw">
                            <a href="#" class="dropdown-toggle js-activated" onclick="window.location.href='${path}/products/${c.key}?level=1'">${c.key}  <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="yamm-content">
                                        <div class="row">
                                            <c:forEach items="${c.value}" var="cc">
                                                <div class="col-sm-<fmt:formatNumber value="${12/c.value.size()}" pattern="#" minFractionDigits="0"></fmt:formatNumber>">
                                                    <h3 class="heading"><a href="${path}/products/${cc.key}?level=2">${cc.key}</a></h3>
                                                    <ul class="nav mega-vertical-nav">
                                                        <c:forEach items="${cc.value}" var="ccc">
                                                            <li><a href="${path}/products/${ccc}?level=3"><i class="fa fa-angle-right"></i> ${ccc}</a></li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </c:forEach>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true">其他 <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="${path}/contact.html">联系我们</a></li>
                            <li><a href="${path}/collections.html">收藏列表</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
    <!--main navigation end-->
</header>
<!--header end-->
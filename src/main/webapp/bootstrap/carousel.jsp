<%--
  Created by IntelliJ IDEA.
  User: piqiu
  Date: 2/28/16
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
  <title>bootStrap测试页面</title>
  <%@ include file="/WEB-INF/pages/common/travel-resources.jsp" %>
  <style type="text/css">
    #carousel_container {border: 1px solid red;}
  </style>
</head>
<body>

<div class="container">

  <div class="row">
    <div class="col-md-9">

      <!-- data-ride页面加载完就开始轮播 -->
      <div data-ride="carousel" id="carousel_container" class="carousel slide">

        <!-- 图片容器 -->
        <div class="carousel-inner">
          <div class="item"><img src="${path}/resources/img/a.jpg" alt="风景A"></div>
          <div class="item active"><img src="${path}/resources/img/b.jpg" alt="风景B"></div>
          <div class="item"><img src="${path}/resources/img/c.jpg" alt="风景C"></div>
        </div>

        <!-- 小圆圈容器 -->
        <ol class="carousel-indicators">
          <li data-slide-to="0" data-target="#carousel_container"></li>
          <li data-slide-to="1" data-target="#carousel_container"></li>
          <li data-slide-to="2" data-target="#carousel_container"></li>
        </ol>
        <!-- 左右按钮容器-->
        <a href="#carousel_container" data-slide="prev" class="left carousel-control">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a href="#carousel_container" data-slide="next"  class="right carousel-control">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>

    </div>
  </div>


</div>
</body>
</html>

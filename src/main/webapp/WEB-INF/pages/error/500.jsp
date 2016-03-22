<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>系统发生内部错误</title>
  <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
  <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
</head>
<body>
<jsp:include page="../main/header.jsp"/>
<!--breadcrumb start-->
<div class="breadcrumb-wrapper">
  <div class="container">
    <h1>系统发生内部错误</h1>
  </div>
</div>
<!--end breadcrumb-->
<div class="space-60"></div>
<div class="container">
  <div class="error-404">
    <h1><i class="fa fa-exclamation-triangle"></i> 系统发生内部错误</h1>
    <p>系统发生内部错误,你也可以点击 <a href="/">这里</a> 回到主页!或者你也可以点击 <a href="/contact.html">这里</a> 来联系我们!</p>
  </div>
</div>
<div class="space-60"></div>

<%@include file="../main/subscribe.jsp"%>
<%@include file="../main/footer.jsp"%>
</body>
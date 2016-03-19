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
  <style>
  </style>
</head>
<body>

<div class="container">
  <button type="button" class="btn btn-default" data-toggle="collapse" data-target="#shows">折叠</button>
  <div id="shows" class="collapse in"><!-- collapse in刚开始就显示div内容 默认collapse -->
    <div class="well">显示的内容显示的内容显示的内容显示的内容显示的内容显示的内容显示的内容显示的内容显示的内容</div>
  </div>
</div>
</body>
</html>

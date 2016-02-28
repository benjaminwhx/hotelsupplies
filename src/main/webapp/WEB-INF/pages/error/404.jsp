<%--
  Created by IntelliJ IDEA.
  User: piqiu
  Date: 2/22/16
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% response.setStatus(200); %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>404 - 页面不存在</title>
</head>
<body>
<script type="text/javascript" src="http://www.qq.com/404/search_children.js?edition=small" charset="utf-8"></script>
<div align="center"><a href="<c:url value="/"/>">返回首页</a></div>
</body>
</html>

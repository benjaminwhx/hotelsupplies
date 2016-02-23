<%--
  Created by IntelliJ IDEA.
  User: piqiu
  Date: 2/22/16
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>403 - 缺少权限</title>
</head>
<body>
<div><h1>你没有访问该页面的权限.</h1></div>
<div><a href="<c:url value="/"/>">返回首页</a></div>
</body>
</html>

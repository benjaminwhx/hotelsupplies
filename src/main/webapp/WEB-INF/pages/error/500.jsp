<%--
  Created by IntelliJ IDEA.
  User: piqiu
  Date: 2/22/16
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory" %>
<%
  Throwable ex = null;
  if (exception != null)
    ex = exception;
  if (request.getAttribute("javax.servlet.error.exception") != null)
    ex = (Throwable) request.getAttribute("javax.servlet.error.exception");

  // 记录日志
  Logger logger = LoggerFactory.getLogger("500.jsp");
  logger.error(ex.getMessage(), ex);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>500 - 系统内部错误</title>
</head>
<body>
<div><h1>系统发生内部错误.</h1></div>
<div><a href="<c:url value="/"/>">返回首页</a></div>
</body>
</html>

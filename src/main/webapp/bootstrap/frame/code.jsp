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
  <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
  <style>
  </style>
</head>
<body>
  <div class="container">
    <h3>内联代码</h3>
    <p>For example, <code>&lt;section&gt;</code> should be wrapped as inline.</p>

    <h3>用户输入</h3>
    <p>To switch directories, type <kbd>cd</kbd> followed by the name of the directory.</p>
    <p>To edit settings, press <kbd>ctrl + ,</kbd></p>

    <h3>代码块</h3>
    <pre>&lt;p&gt;Sample text here...&lt;/p&gt;</pre>

    <h3>变量</h3>
    <var>y</var> = <var>m</var><var>x</var> + <var>b</var>

    <h3>程序输出</h3>
    <samp>This text is meant to be treated as sample output from a computer program.</samp>
  </div>
</body>
</html>

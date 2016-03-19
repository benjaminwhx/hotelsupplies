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
    .tab-pane {border: 1px solid #f0ad4e;}
  </style>
</head>
<body>
  <div class="container">
    <!-- 声明式选项卡 -->
    <ul class="nav nav-tabs">
      <li><a href="#pane1" data-toggle="tab">搜索</a></li>
      <li><a href="#pane2" data-toggle="tab">常规</a></li>
      <li><a href="#pane3" data-toggle="tab">查看</a></li>
    </ul>

    <div class="tab-content">
      <div class="tab-pane active" id="pane1">
        搜索面板搜索面板搜索面板搜索面板搜索面板搜索面板搜索面板搜索面板搜索面板搜索面板搜索面板搜索面板
      </div>
      <div class="tab-pane" id="pane2">
        常规面板常规面板常规面板常规面板常规面板常规面板常规面板常规面板常规面板常规面板常规面板常规面板
      </div>
      <div class="tab-pane" id="pane3">
        查看面板查看面板查看面板查看面板查看面板查看面板查看面板查看面板查看面板查看面板查看面板查看面板
      </div>
    </div>
  </div>

</body>
</html>

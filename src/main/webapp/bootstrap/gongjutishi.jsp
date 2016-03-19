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

  <script>
    $(function() {
      $('[data-toggle="tooltip"]').tooltip({
//        trigger: "click"  //全局设定
      }).on('show.bs.tooltip', function() {
        $("#showdiv").css("background", "red");
      });

    });
  </script>
</head>
<body>
<div style="margin: 200px;">
  <button type="button" class="btn btn-default" data-toggle="tooltip" data-trigger="click" data-placement="left" title="Tooltip on left">Tooltip on left</button>

  <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Tooltip on top</button>

  <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">Tooltip on bottom</button>

  <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>
</div>
<div style="width: 100px; height: 100px; background: #ccc;" id="showdiv"></div>

</body>
</html>

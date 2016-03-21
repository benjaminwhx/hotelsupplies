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

    <script>
        $(function() {
            $('div .panel-collapse').on('show.bs.collapse', function () {
                $("#showhtml").html("被点击了");
            });
        });

    </script>
</head>
<body>

<div class="container">
  <div class="panel-group" id="panelcontainer">
      <!-- 一个panel功能 -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <!-- data-parent的功能就是把下面的所有栏目都隐藏掉，再展开本栏目 -->
            <h4 class="panel-title"><a href="#" data-toggle="collapse" data-target="#channel1"  data-parent="#panelcontainer">栏目管理</a></h4>
        </div>
        <div class="collapse panel-collapse" id="channel1">
            <div class="panel-body">
                <ul>
                    <li><a href="#">增加栏目</a></li>
                    <li><a href="#">增加栏目</a></li>
                    <li><a href="#">增加栏目</a></li>
                </ul>
            </div>
        </div>
    </div>

      <!-- 第二个-->
      <div class="panel panel-default">
          <div class="panel-heading">
              <h4 class="panel-title"><a href="#" data-toggle="collapse" data-target="#channel2">栏目管理</a></h4>
          </div>
          <div class="collapse panel-collapse" id="channel2">
              <div class="panel-body">
                  <ul>
                      <li><a href="#">增加栏目</a></li>
                      <li><a href="#">增加栏目</a></li>
                      <li><a href="#">增加栏目</a></li>
                  </ul>
              </div>
          </div>
      </div>

      <!-- 第三个 -->
      <div class="panel panel-default">
          <div class="panel-heading">
              <h4 class="panel-title"><a href="#" data-toggle="collapse" data-target="#channel3">栏目管理</a></h4>
          </div>
          <div class="collapse panel-collapse" id="channel3">
              <div class="panel-body">
                  <ul>
                      <li><a href="#">增加栏目</a></li>
                      <li><a href="#">增加栏目</a></li>
                      <li><a href="#">增加栏目</a></li>
                  </ul>
              </div>
          </div>
      </div>

      <div id="showhtml"></div>
  </div>
</div>
</body>
</html>

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
    .c {
      border: 1px solid gray;
    }
  </style>
</head>
<body>
<!-- Bootstrap 需要为页面内容和栅格系统包裹一个 .container 容器 .container-fluid 类用于 100% 宽度，占据全部视口（viewport）的容器。-->
  <div class="container">
    <h3>从堆叠到水平排列</h3>
    <div class="row">
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
      <div class="col-md-1 c">.col-ms-1</div>
    </div>
    <div class="row">
      <div class="col-md-4 c">.col-md-4</div>
      <div class="col-md-8 c">.col-md-8</div>
    </div>
    <div class="row">
      <div class="col-md-4 c">.col-md-4</div>
      <div class="col-md-4 c">.col-md-4</div>
      <div class="col-md-4 c">.col-md-4</div>
    </div>
    <div class="row">
      <div class="col-md-6 c">.col-md-6</div>
      <div class="col-md-6 c">.col-md-6</div>
    </div>

  </div>

  <!-- 宽度转为100% -->
  <div class="container-fluid">
    <h3>流式布局容器</h3>
    <div class="row">
      <div class="col-md-4 c">.col-md-4</div>
      <div class="col-md-8 c">.col-md-8</div>
    </div>
  </div>

  <div class="container">
    <h3>移动设备和桌面屏幕</h3>
    <div class="row">
      <div class="col-xs-12 col-md-8 c">.col-xs-12 .col-md-8</div>
      <div class="col-xs-6 col-md-4 c">.col-xs-6 .col-md-4</div>
    </div>
    <div class="row">
      <div class="col-xs-6 col-md-4 c">.col-xs-6 .col-md-4</div>
      <div class="col-xs-6 col-md-4 c">.col-xs-6 .col-md-4</div>
      <div class="col-xs-6 col-md-4 c">.col-xs-6 .col-md-4</div>
    </div>
    <div class="row">
      <div class="col-xs-6 c">.col-xs-6</div>
      <div class="col-xs-6 c">.col-xs-6</div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <h3>多余的列（column）将另起一行排列</h3>
      <div class="col-xs-9 c">.col-xs-9</div>
      <div class="col-xs-4 c">.col-xs-4<br>Since 9 + 4 = 13 &gt; 12, this 4-column-wide div gets wrapped onto a new line as one contiguous unit.</div>
      <div class="col-xs-6 c">.col-xs-6<br>Subsequent columns continue along the new line.</div>
    </div>
  </div>

  <div class="container">
    <h3>列偏移</h3>
    <div class="row">
      <div class="col-md-4 c">.col-md-4</div>
      <div class="col-md-4 col-md-offset-4 c">.col-md-4 .col-md-offset-4</div>
    </div>
    <div class="row">
      <div class="col-md-3 col-md-offset-3 c">.col-md-3 .col-md-offset-3</div>
      <div class="col-md-3 col-md-offset-3 c">.col-md-3 .col-md-offset-3</div>
    </div>
    <div class="row">
      <div class="col-md-6 col-md-offset-3 c">.col-md-6 .col-md-offset-3</div>
    </div>
  </div>

  <div class="container">
    <h3>嵌套列</h3>
    <div class="row">
      <div class="col-md-9 c">
        Level 1: .col-md-9
        <div class="row">
          <div class="col-md-6 c">Level 2 .col-md-6</div>
          <div class="col-md-6 c">Level 2 .col-md-6</div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

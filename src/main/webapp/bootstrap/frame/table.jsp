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
    <h3>基础表格</h3>
    <table class="table">
      <tr>
        <th>#</th><th>First Name</th><th>Last Name</th><th>Username</th>
      </tr>
      <tr>
        <td><strong>1</strong></td><td>Mark</td><td>Otto</td><td>@mddo</td>
      </tr>
      <tr>
        <td><strong>2</strong></td><td>Jacob</td><td>Thornton</td><td>@fat</td>
      </tr>
      <tr>
        <td><strong>3</strong></td><td>Larry</td><td>the Bird</td><td>@twitter</td>
      </tr>
    </table>

    <h3>条纹状表格</h3>
    <table class="table table-striped">
      <tr>
        <th>#</th><th>First Name</th><th>Last Name</th><th>Username</th>
      </tr>
      <tr>
        <td><strong>1</strong></td><td>Mark</td><td>Otto</td><td>@mddo</td>
      </tr>
      <tr>
        <td><strong>2</strong></td><td>Jacob</td><td>Thornton</td><td>@fat</td>
      </tr>
      <tr>
        <td><strong>3</strong></td><td>Larry</td><td>the Bird</td><td>@twitter</td>
      </tr>
    </table>

    <h3>带边框的表格</h3>
    <table class="table table-bordered">
      <tr>
        <th>#</th><th>First Name</th><th>Last Name</th><th>Username</th>
      </tr>
      <tr>
        <td><strong>1</strong></td><td>Mark</td><td>Otto</td><td>@mddo</td>
      </tr>
      <tr>
        <td><strong>2</strong></td><td>Jacob</td><td>Thornton</td><td>@fat</td>
      </tr>
      <tr>
        <td><strong>3</strong></td><td>Larry</td><td>the Bird</td><td>@twitter</td>
      </tr>
    </table>

    <h3>鼠标悬停</h3>
    <table class="table table-hover">
      <tr>
        <th>#</th><th>First Name</th><th>Last Name</th><th>Username</th>
      </tr>
      <tr>
        <td><strong>1</strong></td><td>Mark</td><td>Otto</td><td>@mddo</td>
      </tr>
      <tr>
        <td><strong>2</strong></td><td>Jacob</td><td>Thornton</td><td>@fat</td>
      </tr>
      <tr>
        <td><strong>3</strong></td><td>Larry</td><td>the Bird</td><td>@twitter</td>
      </tr>
    </table>

    <h3>紧缩表格</h3>
    <table class="table table-condensed">
      <tr>
        <th>#</th><th>First Name</th><th>Last Name</th><th>Username</th>
      </tr>
      <tr>
        <td><strong>1</strong></td><td>Mark</td><td>Otto</td><td>@mddo</td>
      </tr>
      <tr>
        <td><strong>2</strong></td><td>Jacob</td><td>Thornton</td><td>@fat</td>
      </tr>
      <tr>
        <td><strong>3</strong></td><td>Larry</td><td>the Bird</td><td>@twitter</td>
      </tr>
    </table>

    <h3>状态表格(可以使用.sr-only隐藏某个表格)</h3>
    <table class="table table-condensed">
      <tr class="active">
        <th>#</th><th>First Name</th><th>Last Name</th><th>Username</th>
      </tr>
      <tr class="success">
        <td><strong>1</strong></td><td>Mark</td><td>Otto</td><td>@mddo</td>
      </tr>
      <tr class="info">
        <td><strong>2</strong></td><td>Jacob</td><td>Thornton</td><td>@fat</td>
      </tr>
      <tr class="warning">
        <td><strong>3</strong></td><td>Larry</td><td>the Bird</td><td>@twitter</td>
      </tr>
      <tr class="danger">
        <td><strong>4</strong></td><td>Ben</td><td>the Car</td><td>@sd</td>
      </tr>
      <tr>
        <td class="danger"><strong>5</strong></td><td class="info">Caroline</td><td class="active">the Plan</td><td class="success">@sqwe</td>
      </tr>
    </table>
  </div>
</body>
</html>

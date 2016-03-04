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
  <div class="container">
    <h3>基本表单(不要将表单组直接和输入框组混合使用。建议将输入框组嵌套到表单组中使用。)</h3>
    <form>
      <div class="form-group">
        <label for="exampleInputEmail">Email Address</label>
        <input type="email" id="exampleInputEmail" placeholder="Email" class="form-control">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword">Password</label>
        <input type="password" id="exampleInputPassword" placeholder="password" class="form-control">
      </div>
      <div class="form-group">
        <label for="exampleInputFile">File Input</label>
        <input type="file" id="exampleInputFile">
        <p class="help-block">Example block-level help text here.</p>
      </div>
      <div class="checkbox">
        <label>
          <input type="checkbox"> Check me out
        </label>
      </div>
      <button class="btn btn-default">Submit</button>
    </form>

    <h3>内联表单(可能需要手动设置宽度、一定要添加 label 标签)</h3>
    <form class="form-inline">
      <div class="form-group" style="margin-right: 20px;">
        <label for="exampleInputName2">Name</label>
        <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
      </div>
      <div class="form-group" style="margin-right: 20px;">
        <label for="exampleInputEmail2">Email</label>
        <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
      </div>
      <button type="submit" class="btn btn-default">Send invitation</button>
    </form>
    <form class="form-inline">
      <div class="form-group">
        <label class="sr-only" for="exampleInputEmail3">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">
      </div>
      <div class="form-group">
        <label class="sr-only" for="exampleInputPassword3">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
      </div>
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
      <button type="submit" class="btn btn-default">Sign in</button>
    </form>
    <form class="form-inline">
      <div class="form-group">
        <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
        <div class="input-group"><!-- 将input-group包裹在form-group中 -->
          <div class="input-group-addon">$</div>
          <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
          <div class="input-group-addon">.00</div>
        </div>
      </div>
      <button type="submit" class="btn btn-primary">Transfer cash</button>
    </form>

    <h3>水平排列的表单</h3>
    <form class="form-horizontal">
      <div class="form-group">
        <label for="inputEmail3" class="col-md-2 control-label">Email</label>
        <div class="col-md-10">
          <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
        </div>
      </div>
    </form>
  </div>
</body>
</html>

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
</head>
<body>
  <div class="container">
    <div class="btn-toolbar">
      <div class="btn-group">
        <a href="#" class="btn btn-default"><span class="glyphicon glyphicon-education"></span></a>
        <a href="#" class="btn btn-default"><span class="glyphicon glyphicon-ice-lolly-tasted"></span></a>
        <a href="#" class="btn btn-default"><span class="glyphicon glyphicon-sunglasses"></span></a>
        <a href="#" class="btn btn-default"><span class="glyphicon glyphicon-grain"></span></a>
      </div>
    </div>

    <hr />

    <div class="col-sm-3 col-sm-offset-2">
      <div class="input-group">
        <span class="input-group-addon">
          <span class="glyphicon glyphicon-grain"></span>
        </span>
        <input type="text" class="form-control" />
      </div>
    </div>

    <br />
    <hr />
    <ul class="nav nav-tabs">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Profile</a></li>
      <li><a href="#">Message</a></li>
    </ul>
    <br />

    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Brand</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

    <div class="jumbotron">
      <img src="${path}/resources/img/1.jpg" />
    </div>
  </div>
</body>
</html>

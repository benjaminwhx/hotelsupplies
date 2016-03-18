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
  <title>网站后台管理</title>
  <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
  <style type="text/css">
    @media (min-width: 768px) {
      #slide_sub {
        width: 250px;
        margin-top: 51px;
        position: absolute;
        z-index: 1;
        height: 600px;
      }
      .mysearch {
        margin: 10px 0;
      }
      .page_main {
        margin-left: 255px;
      }
      .navbar {
          margin-bottom: 5px;
      }
    }
  </style>
</head>
<body>

  <!-- 导航区域 -->
  <nav class="navbar navbar-default navbar-static-top">
    <div class="navbar-header">
      <button type="button"  class="navbar-toggle collapsed" data-toggle="collapse" data-target="#slide_sub" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="#" class="navbar-brand">网站后台管理</a>
    </div>

    <ul class="nav navbar-nav navbar-right" style="margin-right: 25px;">
      <li><a href="#"><span class="badge" style="background: #c12e2a">23</span></a></li>
      <li><a href="#"><span class="glyphicon glyphicon-off"></span>&nbsp;注销</a></li>
    </ul>

    <!-- 侧边功能栏 -->
    <div class="navbar-default navbar-collapse" style="margin-top: 51px;" id="slide_sub">
      <ul class="nav">
        <li>
          <%--搜索--%>
          <div class="input-group mysearch">
            <input type="text" class="form-control">
            <span class="input-group-btn">
              <button type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-search"></span>
              </button>
            </span>
          </div>
        </li>
        <li>
          <a href="#sub1" data-toggle="collapse">系统功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
          <ul id="sub1" class="collapse nav">
            <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
          </ul>
        </li>
        <li>
          <a href="#sub2" data-toggle="collapse">栏目功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
          <ul id="sub2" class="collapse nav">
            <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
          </ul>
        </li>
        <li>
          <a href="#sub3" data-toggle="collapse">产品功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
          <ul id="sub3" class="collapse nav">
            <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
          </ul>
        </li>
        <li>
          <a href="#sub4" data-toggle="collapse">新闻功能<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
          <ul id="sub4" class="collapse nav">
            <li><a href="#"><span class=" glyphicon glyphicon-info-sign"></span>&nbsp;系统信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;管理员管理</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>&nbsp;日志信息</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-remove-circle"></span>&nbsp;退出</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>

  <div class="page_main">
      <!-- 面包屑导航 -->
    <ol class="breadcrumb">
        <li><a href="#">管理首页</a></li>
        <li><a href="#">栏目</a></li>
        <li class="active">增加栏目</li>
    </ol>

      <div class="row">
          <div class="col-md-6">
              <div class="panel panel-default">
                  <div class="panel-heading">最新订单</div>
                  <div class="panel-body">
                      <table class="table table-striped table-hover table-bordered">
                          <thead>
                            <tr>
                                <th>#</th>
                                <th>订单号</th>
                                <th>订单日期</th>
                                <th>总价</th>
                                <th>状态</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                                <td>1</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                            </tr>
                            <tr>
                                <td>2</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                            </tr>
                            <tr>
                                <td>3</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                            </tr>
                            <tr>
                                <td>4</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                            </tr>
                            <tr>
                                <td>5</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                            </tr>
                          </tbody>
                      </table>
                  </div>
              </div>
          </div>

          <div class="col-md-6">

              <div class="panel panel-default">
                  <div class="panel-heading">最新订单</div>
                  <div class="panel-body">
                      <table class="table table-striped table-hover table-bordered">
                          <thead>
                          <tr>
                              <th>#</th>
                              <th>订单号</th>
                              <th>订单日期</th>
                              <th>总价</th>
                              <th>状态</th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr>
                              <td>1</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>2</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>3</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>4</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>5</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          </tbody>
                      </table>
                  </div>
              </div>

          </div>
      </div>

      <div class="row">
          <div class="col-sm-12">
              <div class="panel panel-default">
                  <div class="panel-heading">最新订单</div>
                  <div class="panel-body">
                      <table class="table table-striped table-hover table-bordered">
                          <thead>
                          <tr>
                              <th>#</th>
                              <th>订单号</th>
                              <th>订单日期</th>
                              <th>总价</th>
                              <th>状态</th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr>
                              <td>1</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>2</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>3</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>4</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          <tr>
                              <td>5</td><td>0123456</td><td>2008-12-23 13:12:32</td><td>3254.28</td><td>出库</td>
                          </tr>
                          </tbody>
                      </table>

                      <nav class="pull-right">
                          <ul class="pagination" style="margin-top: 5px;">
                              <li>
                                  <a href="#" aria-label="Previous">
                                      <span aria-hidden="true">上一页</span>
                                  </a>
                              </li>
                              <li><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li><a href="#">4</a></li>
                              <li><a href="#">5</a></li>
                              <li>
                                  <a href="#" aria-label="Next">
                                      <span aria-hidden="true">下一页</span>
                                  </a>
                              </li>
                          </ul>
                      </nav>
                  </div>
              </div>
          </div>
      </div>
  </div>

</body>
</html>

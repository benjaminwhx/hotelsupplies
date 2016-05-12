<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>产品列表_月升宾馆酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

<!--breadcrumb start-->
<div class="breadcrumb-wrapper">
    <div class="container">
        <h1>产品 列表</h1>
    </div>
</div>
<!--end breadcrumb-->

<div class="space-60"></div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <ul class="product-filter-block list-inline clearfix">
                <li>排序:</li>
                <li class="active"><a href="#">价格</a></li>
                <li><a href="#">热度</a></li>
            </ul><!--fliter list end-->

            <c:forEach begin="1" end="2">
                <div class="row">
                    <c:forEach begin="1" end="3" varStatus="c">
                        <div class="col-sm-4">
                            <div class="item_holder">
                                <a href="${path}/products/detail/1111"><img src="${path}/resources/img/shopping/women/${c.count+1}.jpg" alt="" class="img-responsive"></a>
                                <div class="title">
                                    <h5>产品名</h5>
                                    <span class="price">$29.99</span>
                                    <p>
                                        产品描述产品描述产品描述产品描述产品描述产品描述产品描述产品描述
                                    </p>
                                </div>
                            </div><!--item holder-->
                        </div>
                    </c:forEach>
                </div>
            </c:forEach>

            <!-- 分类start -->
            <nav>
                <ul class="pagination pull-right clearfix">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- 分类end -->
        </div>

        <jsp:include page="product-right.jsp"/>
    </div>
</div>
<div class="space-60"></div>

<%@include file="subscribe.jsp"%>
<%@include file="footer.jsp"%>
</body>
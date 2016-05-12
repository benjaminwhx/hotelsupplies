<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>个人收藏_月升宾馆酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
</head>
<body>
<jsp:include page="header.jsp"/>

<!--breadcrumb start-->
<div class="breadcrumb-wrapper">
    <div class="container">
        <h1>收藏 列表</h1>
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

            <c:forEach begin="1" end="5" var="c" varStatus="cc">
                <div class="product-list">
                    <div class="row">
                        <div class="col-md-4 margin-b-30">
                            <div class="product-list-thumb">
                                <a href="${path}/products/detail/1111"> <img src="${path}/resources/img/shopping/men/${3+cc.count}.jpg" alt="Product image" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="product-list-desc">
                                <h3 class="title"><a href="${path}/products/detail/1111">收藏的产品名</a></h3>
                                <span class="price"><del>$299.00</del> $199.00</span>
                                    <span class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-full"></i>
                                        <a href="#">8 Reviews</a>
                                    </span>
                                <p>
                                    收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;收藏的产品描述;
                                </p>
                                <div class="icon-list">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="取消收藏" class="btn btn-skin">取消收藏</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <!--pagination-->
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
            <!--pagination end-->
        </div>

        <jsp:include page="product-right.jsp"/>
    </div>
</div>

<div class="space-60"></div>

<%@include file="subscribe.jsp"%>
<%@include file="footer.jsp"%>
</body>
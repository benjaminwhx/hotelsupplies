<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>产品详情_月升宾馆酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
</head>
<body>
<jsp:include page="header.jsp"/>

<!--breadcrumb start-->
<div class="breadcrumb-wrapper">
    <div class="container">
        <h1>产品 详情</h1>
    </div>
</div>
<!--end breadcrumb-->

<div class="space-60"></div>
<div class="container">
    <div class="row single-product">

        <div class="col-md-8">
            <div class="row">
                <div class="col-md-5 margin-b-30">
                    <div id="product-single"  class="owl-carousel owl-theme single-product-slider">
                        <div class="item">
                            <a href="#" data-lightbox="roadtrip"> <img src="${path}/resources/img/shopping/men/s-1.jpg" alt="Product image" class="img-responsive"></a>
                        </div>
                        <div class="item">
                            <a href="#" data-lightbox="roadtrip"> <img src="${path}/resources/img/shopping/men/s-2.jpg" alt="Product image" class="img-responsive"></a>
                        </div>
                        <div class="item">
                            <a href="#" data-lightbox="roadtrip"> <img src="${path}/resources/img/shopping/men/s-3.jpg" alt="Product image" class="img-responsive"></a>
                        </div>
                        <div class="item">
                            <a href="#" data-lightbox="roadtrip"> <img src="${path}/resources/img/shopping/men/s-4.jpg" alt="Product image" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="product-detail-desc">
                        <h3 class="title"><a href="#">产品名</a></h3>
                        <span class="price"><del>$299.00</del> $199.00</span>
                                <span class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-full"></i>
                                    <a href="#">8次浏览</a>
                                </span>
                        <p>
                            这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述
                        </p>
                        <div class="available">
                            Availability : In Stock
                        </div>
                        <div class="size">
                            <span>库存:</span>
                            <b style="color: red">38</b>
                        </div>
                        <div class="add-buttons">
                            <a href="#" class="btn btn-border btn-lg" data-toggle="tooltip" data-placement="top" title="Add to wishlist"><i class="fa fa-heart"></i></a>
                        </div>
                    </div>
                </div>
            </div><!--single product details end-->
            <div class="space-40"></div>
            <div class="row">
                <div class="col-md-12 item-more-info">
                    <div>

                        <!-- Nav tabs -->
                        <ul class="nav nav-justified" role="tablist">
                            <li role="presentation" class="active"><a href="#desc" aria-controls="desc" role="tab" data-toggle="tab">Description</a></li>
                            <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a></li>
                            <li role="presentation"><a href="#add-cmnt" aria-controls="add-cmnt" role="tab" data-toggle="tab">Add Review</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!-- 描述start -->
                            <div role="tabpanel" class="tab-pane active" id="desc">
                                <p>
                                    这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-
                                </p>
                                <p>
                                    这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-这是一个描述-
                                </p>
                            </div>
                            <!-- 描述end -->

                            <!-- 评论start -->
                            <div role="tabpanel" class="tab-pane" id="reviews">
                                <c:forEach begin="1" end="5">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#">
                                                <img class="media-object img-circle" src="${path}/resources/img/shopping/team-1.jpg" width="80" alt="...">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <h5>Benjamin</h5>
                                            <p>
                                                这个东西质量很好，老板人也很好，下次还会再来的。
                                            </p>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-empty"></i>
                                                </span>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- 评论end -->

                            <div role="tabpanel" class="tab-pane" id="add-cmnt">
                                <form role="form" method="post" action="#">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="inputFirstName" class="control-label">First Name:<span class="text-error">*</span></label>
                                                <div>
                                                    <input type="text" class="form-control" id="inputFirstName">
                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="inputCompany" class="control-label">Company:</label>
                                                <div>
                                                    <input type="text" class="form-control" id="inputCompany">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="review" class="control-label">Add Review:*</label>
                                                <textarea class="form-control" id="review">    </textarea>
                                            </div>
                                        </div>

                                    </div>
                                    <input type="submit" class="btn-skin btn btn-lg" value="Add Review">
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>

        <jsp:include page="product-right.jsp"/>
    </div>

    <div class="space-60"></div>
    <div class="similar-products">
        <h2 class="section-heading">猜你喜欢</h2>
        <!--owl carousel-->
        <div class="row">
            <div id="owl-slider" class="col-md-12">
                <c:forEach begin="1" end="6" step="1" varStatus="c">
                    <div class="item">
                        <div class="item_holder">
                            <a href="#"><img src="${path}/resources/img/shopping/women/${c.count}.jpg" alt="" class="img-responsive"></a>
                            <div class="title">
                                <h5>产品名</h5>
                                <span class="price">$29.99</span>
                            </div>
                        </div><!--item holder-->
                    </div>
                </c:forEach>
            </div>
        </div>
        <!--owl end-->
    </div><!--similar products-->

</div>
<div class="space-60"></div>

<%@include file="subscribe.jsp"%>
<%@include file="footer.jsp"%>
</body>
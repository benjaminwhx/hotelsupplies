<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>月升酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
</head>
<body>
<jsp:include page="header.jsp"/>
<!--slider revolution 5 start-->
<article class="content">
    <div class="rev_slider_wrapper">
        <!-- START REVOLUTION SLIDER 5.0 auto mode -->
        <div id="rev_slider" class="rev_slider"  data-version="5.0">
            <ul>
                <!-- SLIDE  -->
                <li data-transition="fade">

                    <!-- MAIN IMAGE -->
                    <img src="${path}/resources/img/shopping/bg/bg-1.jpg"  alt=""  width="1920" height="600">

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption slider-title tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="center" data-hoffset="0"
                         data-y="top" data-voffset="200"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="500"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            >快乐购物
                    </div>

                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption slider-caption tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="center" data-hoffset="0"
                         data-y="top" data-voffset="280"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="800"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            >直降50%
                    </div>
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption slider-button tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="center" data-hoffset="0"
                         data-y="top" data-voffset="320"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="1200"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            ><a href="${path}/products/all">立即选购</a>
                    </div>
                </li>

                <!-- SLIDE  -->
                <li data-transition="fade">

                    <!-- MAIN IMAGE -->
                    <img src="${path}/resources/img/shopping/bg/bg-2.jpg"  alt=""  width="1920" height="600">

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption slider-title tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="right" data-hoffset="100"
                         data-y="top" data-voffset="150"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="500"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            > 男人的衣柜
                    </div>

                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption slider-caption tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="right" data-hoffset="100"
                         data-y="top" data-voffset="230"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="800"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            >快来选购
                    </div>
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption slider-button tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="right" data-hoffset="100"
                         data-y="top" data-voffset="280"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="1200"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            ><a href="${path}/products/all">立即选购</a>
                    </div>
                </li>

                <!-- SLIDE  -->
                <li data-transition="fade">

                    <!-- MAIN IMAGE -->
                    <img src="${path}/resources/img/shopping/bg/bg-3.jpg"  alt=""  width="1920" height="600">

                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption slider-title tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="center" data-hoffset="0"
                         data-y="top" data-voffset="200"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="500"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            >享受购物
                    </div>

                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption slider-caption tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="center" data-hoffset="0"
                         data-y="top" data-voffset="280"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="800"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            >直降50%
                    </div>
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption slider-button tp-resizeme"

                         data-transform_idle="o:1;"
                         data-x="center" data-hoffset="0"
                         data-y="top" data-voffset="320"
                         data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                         data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                         data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                         data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                         data-start="1200"
                         data-splitin="none"
                         data-splitout="none"
                         data-responsive_offset="on"
                            ><a href="${path}/products/all">立即选购</a>
                    </div>
                </li>
            </ul>
        </div><!-- END REVOLUTION SLIDER -->
    </div>
</article>

<!--slider revolution 5 end-->
<div class="space-60"></div>
<div class="blocks-main">
    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <div class="blocks-col">
                    <img src="${path}/resources/img/shopping/bg/bg-2.jpg" alt="" class="img-responsive">
                    <div class="block-overlay">
                        <h4>标题</h4>
                        <p>内容</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="blocks-col">
                    <img src="${path}/resources/img/shopping/bg/bg-3.jpg" alt="" class="img-responsive">
                    <div class="block-overlay">
                        <h4>标题</h4>
                        <p>内容</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="blocks-col">
                    <img src="${path}/resources/img/shopping/bg/bg-1.jpg" alt="" class="img-responsive">
                    <div class="block-overlay">
                        <h4>标题</h4>
                        <p>内容</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--block main-->


<div class="space-60"></div>


<!--新品发布-->
<section class="new-arrivals">
    <div class="container">
        <h2 class="section-heading">新品 发布</h2>

        <div class="row">
            <div id="owl-slider" class="col-md-12">
                <c:forEach begin="1" end="6" varStatus="c">
                    <div class="item">
                        <div class="item_holder">
                            <a href="${path}/products/detail/1111"><img src="${path}/resources/img/shopping/men/${c.count}.jpg" alt="" class="img-responsive"></a>
                            <div class="title">
                                <h5>Sky-Blue <br>短袖</h5>
                                <span class="price">$29.99</span>
                            </div>
                        </div><!--item holder-->
                    </div>
                </c:forEach>
            </div>
        </div>
        <!--owl end-->
    </div>
</section>
<!--end new arrivals-->
<div class='space-60'></div>
<!--parallax section start-->
<section class="parallax">
    <div class="container">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1 text-center">
                <h1><span>最高优惠直降50%</span></h1>
                <a href='${path}/products/all' class="btn btn-skin btn-lg">立即选购</a>
            </div>
        </div>
    </div>
</section>
<!--parallax section end-->
<div class='space-60'></div>

<!--热销商品-->
<section class="featured-products">
    <div class="container">
        <h2 class="section-heading">热销商品</h2>
        <c:forEach begin="1" end="3">
            <div class="row">
                <c:forEach begin="1" end="4" varStatus="c">
                    <div class="col-sm-6 col-md-3 ">
                        <div class="item_holder">
                            <a href="${path}/products/detail/1111"><img src="${path}/resources/img/shopping/men/${c.count}.jpg" alt="" class="img-responsive"></a>
                            <div class="title">
                                <h5>商品名</h5>
                                <span class="price">$29.99</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:forEach>
    </div>
</section>
<!--end 热销商品-->
<div class="space-50"></div>

<!-- subscribe -->
<%@include file="subscribe.jsp"%>

<div class="space-50"></div>
<div class="container">
    <div class="row">
        <!-- 热销商品 -->
        <div class="col-sm-4 col-xs-12">
            <h3 class="bg-title">热销 <span>商品</span></h3>
            <c:forEach begin="1" end="4" varStatus="c">
                <div class="media-item clearfix">
                    <img src="${path}/resources/img/shopping/men/${2+c.count}.jpg" alt="" class="img-responsive" width="100">
                    <div class="media-item-content">
                        <h4><a href="${path}/products/detail/1111">热销产品名</a></h4>
                        <span class="cat">产品</span>
                        <ul class="list-inline">
                            <li><del>$49.99</del></li>
                            <li>$29.00</li>
                            <li><a href='#' data-toggle="tooltip" data-placement="top" title="加入收藏"><i class="fa fa-heart"></i></a></li>
                        </ul>
                        <div class='rating'>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-empty"></i>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- 新品上架 -->
        <div class="col-sm-4 col-xs-12">
            <h3 class="bg-title">新品 <span>上架</span></h3>
            <c:forEach begin="1" end="4" varStatus="c">
                <div class="media-item clearfix">
                    <img src="${path}/resources/img/shopping/men/${2+c.count}.jpg" alt="" class="img-responsive" width="100">
                    <div class="media-item-content">
                        <h4><a href="${path}/products/detail/1111">最新产品名</a></h4>
                        <span class="cat">产品</span>
                        <ul class="list-inline">
                            <li><del>$49.99</del></li>
                            <li>$29.00</li>
                            <li><a href='#' data-toggle="tooltip" data-placement="top" title="加入收藏"><i class="fa fa-heart"></i></a></li>
                        </ul>
                        <div class='rating'>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-empty"></i>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- 最受欢迎 -->
        <div class="col-sm-4 col-xs-12">
            <h3 class="bg-title">最受 <span>欢迎</span></h3>
            <c:forEach begin="1" end="4" varStatus="c">
                <div class="media-item clearfix">
                    <img src="${path}/resources/img/shopping/men/${2+c.count}.jpg" alt="" class="img-responsive" width="100">
                    <div class="media-item-content">
                        <h4><a href="${path}/products/detail/1111">最受欢迎的产品名</a></h4>
                        <span class="cat">产品</span>
                        <ul class="list-inline">
                            <li><del>$49.99</del></li>
                            <li>$29.00</li>
                            <li><a href='#' data-toggle="tooltip" data-placement="top" title="加入收藏"><i class="fa fa-heart"></i></a></li>
                        </ul>
                        <div class='rating'>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-empty"></i>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!--section end-->
<div class="space-60"></div>
<!--features section start-->
<div class="container">
    <div class="row">
        <div class="col-sm-4 margin-b-30">
            <div class="features-box">
                <div class="icon">
                    <i class="fa fa-truck"></i>
                </div>
                <div class="text">
                    <h3>免费送货上门</h3>
                    <p>
                        凡事在网上选购，电话预定下单的，我们承诺免费送货上门服务
                    </p>
                </div>
            </div><!--features box-->
        </div><!--features column-->
        <div class="col-sm-4 margin-b-30">
            <div class="features-box blue">
                <div class="icon">
                    <i class="fa fa-credit-card"></i>
                </div>
                <div class="text">
                    <h3>24小时服务</h3>
                    <p>
                        本店支持24小时服务，如需要请电话咨询，我们竭诚为您服务
                    </p>
                </div>
            </div><!--features box-->
        </div><!--features column-->
        <div class="col-sm-4 margin-b-30">
            <div class="features-box">
                <div class="icon">
                    <i class="fa fa-refresh"></i>
                </div>
                <div class="text">
                    <h3>可退货</h3>
                    <p>
                        在网上电话下单订购的从订购日起7天内商品完好无损的可自行退换
                    </p>
                </div>
            </div><!--features box-->
        </div><!--features column-->
    </div>
</div>
<!--features section end-->
<div class="space-30"></div>
<!--partners-->
<section class="partners">
    <div class='container'>
        <h2 class="section-heading">我们的合作伙伴</h2>
        <div class="row">
            <div id="owl-partners" class="col-md-12">

                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-01.jpg" alt="泰州嘉銮国际大酒店" class="img-responsive"><span>泰州嘉銮国际大酒店</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-02.jpg" alt="泰州会宾楼宾馆" class="img-responsive"><span>泰州会宾楼宾馆</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-03.png" alt="泰州美丽华大酒店" class="img-responsive"><span>泰州美丽华大酒店</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-04.jpg" alt="泰州天德湖宾馆" class="img-responsive"><span>泰州天德湖宾馆</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-05.jpg" alt="泰州宾馆" class="img-responsive"><span>泰州宾馆</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-06.jpg" alt="泰州碧桂园凤凰酒店" class="img-responsive"><span>泰州碧桂园凤凰酒店</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-07.jpg" alt="泰州锦江之星" class="img-responsive"><span>泰州锦江之星</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-08.jpg" alt="泰州富士吉大酒店" class="img-responsive"><span>泰州富士吉大酒店</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-09.jpg" alt="泰州花园假日大酒店" class="img-responsive"><span>泰州花园假日大酒店</span></div>
                <div class="item"><img src="${path}/resources/img/shopping/hotel/jd-10.jpg" alt="泰州海洋之星宾馆" class="img-responsive"><span>泰州海洋之星宾馆</span></div>

            </div>
        </div>
    </div>
</section>
<!--end partners-->
<%@include file="footer.jsp"%>
<script>
    /******************************************
     -	PREPARE PLACEHOLDER FOR SLIDER	-
     ******************************************/

    var revapi;
    jQuery(document).ready(function () {
        revapi = jQuery("#rev_slider").revolution({
            sliderType: "standard",
            sliderLayout: "auto",
            delay: 9000,
            navigation: {
                arrows: {enable: true}
            },
            gridwidth: 1230,
            gridheight: 500
        });
    });	/*ready*/
</script>
</body>
</html>

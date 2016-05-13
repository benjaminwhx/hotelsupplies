<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-3 col-md-offset-1">
    <!-- 分类start -->
    <div class="sidebar-widget">
        <h3>分类</h3>
        <ul class="list-unstyled">
            <c:forEach items="${category}" var="c">
                <li>&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp; <a href="${path}/products/${c.key}?level=1">${c.key}</a></li>
            </c:forEach>
        </ul>
    </div>
    <!-- 分类end -->
    <!-- 热销品start -->
    <div class="sidebar-widget">
        <h3>热销品 </h3>
        <c:forEach begin="1" end="3" step="1" varStatus="s">
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img class="media-object" src="${path}/resources/img/shopping/men/${4+s.count}.jpg" alt="" width="70">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><a href='#'>热卖品${s.count}</a></h4>
                    <span class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-empty"></i>
                    </span>
                    <span class="price">
                        <del>$99.00</del>
                        $49.00
                    </span>
                </div>
            </div>
        </c:forEach>
    </div>
    <!-- 热销品end -->
</div>
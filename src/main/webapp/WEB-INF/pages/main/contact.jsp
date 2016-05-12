<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>联系我们_月升宾馆酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/shopping-resources.jsp" %>
    <script src="${path}/resources/js/contact_me.js"></script>
</head>
<body>
<jsp:include page="../main/header.jsp"/>

<!--breadcrumb start-->
<div class="breadcrumb-wrapper">
    <div class="container">
        <h1>联系 我们</h1>
    </div>
</div>
<!--end breadcrumb-->

<div class="space-60"></div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h3>我们很高兴听到您的意见反馈. </h3>
            <p>
                如果您对我们公司有什么意见或建议，请在下面提出来并给我们发送，我们很高兴得到您的支持!月升酒店用品经营部已把过去单一产品发展为现在拥有生产客房用品；酒店用品；宾馆配套设备，等多产品全面发展的新企业。欢迎各宾馆，酒店经理负责人前来访问咨询洽谈业务.欢迎各单位企事业前来定购 . 月升酒店用品经营部从事生产多年，产品齐全，经验丰富，资金雄厚。产品遍布全国各地。 欢迎各单位企事业定做工作服,(一次合作,终身朋友)资金雄厚,售后服务一流!
            </p>
            <form name="sentMessage" id="contactForm" method="post" novalidate="">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 controls">

                                <input type="text" class="form-control" placeholder="姓名" id="name" required="" data-validation-required-message="请输入您的姓名." aria-invalid="false">
                                <p class="help-block"></p>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 controls">

                                <input type="email" class="form-control" placeholder="邮件地址" id="email" required="" data-validation-required-message="请输入您的邮件地址.">
                                <p class="help-block"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row control-group">
                    <div class="form-group col-xs-12 controls">

                        <textarea rows="5" class="form-control" placeholder="意见/建议内容" id="message" required="" data-validation-required-message="请输入您的意见或建议."></textarea>
                        <p class="help-block"></p>
                    </div>
                </div>

                <div id="success"></div>
                <div class="row">
                    <div class="form-group col-xs-12">
                        <button type="submit" class="btn btn-skin btn-lg">发送意见或建议</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6">
            <!-- map -->
            <div id="dituContent" style="width:100%; height: 300px;"></div>
            <div class="space-40"></div>
            <ul class="list-unstyled contact contact-info">
                <li><p><strong><i class="fa fa-map-marker"></i> 公司地址:</strong> 江苏省泰州市海陵区温泰市场#81055-#81060</p></li>
                <li><p><strong><i class="fa fa-envelope"></i> 给我们发邮件:</strong> <a href="mailto:benjaminwhx@sina.com">benjaminwhx@sina.com</a></p></li>
                <li> <p style="display: inline;"><strong><i class="fa fa-phone"></i> 座机1:</strong> +86 0523-82939856</p>&nbsp;&nbsp;&nbsp;&nbsp;<p style="display: inline"><strong><i class="fa fa-phone"></i> 座机2:</strong> +86 0523-86273766</p></li>
                <li> <p style="display: inline;"><strong><i class="fa fa-phone"></i> 手机1:</strong> +86 13182204990</p>&nbsp;&nbsp;&nbsp;&nbsp;<p style="display: inline"><strong><i class="fa fa-phone"></i> 手机2:</strong> +86 18752600665</p></li>
                <li><p></p></li>
                <li> <p><strong><i class="fa fa-print"></i> 传真:</strong> +86 0523-86665052</p></li>
            </ul>
        </div>
    </div>
</div>
<div class="space-60"></div>

<%@include file="../main/footer.jsp"%>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script src="${path}/resources/js/baidumap.js"></script>
</body>
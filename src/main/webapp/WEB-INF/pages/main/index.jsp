<%--
  Created by IntelliJ IDEA.
  User: piqiu
  Date: 16/3/18
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>月升酒店用品</title>
    <%@ include file="/WEB-INF/pages/common/bootstrap-resources.jsp" %>
    <%@ include file="/WEB-INF/pages/common/travel-resources.jsp" %>
</head>
<%--<body id="page-top" class="index" data-spy="scroll" data-target=".navbar-fixed-top">--%>
<body id="page-top" class="index">
<!-- 导航菜单 -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top">Yue Sheng <span>宾馆酒店用品</span></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a href="#services" class="page-scroll">商品</a>
                </li>
                <li>
                    <a href="#portfolio" class="page-scroll">简介</a>
                </li>
                <li>
                    <a href="#about" class="page-scroll">关于</a>
                </li>
                <li>
                    <a href="#team" class="page-scroll">地址</a>
                </li>
                <li>
                    <a href="#contact" class="page-scroll">联系方式</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header>
    <div class="container">
        <div class="intro-text">
            <div class="intro-lead-in">欢迎来到月升宾馆酒店用品</div>
            <div class="intro-heading">希望您能在这儿挑选到满意的商品</div>
            <a href="#services" class="page-scroll btn btn-xl">挑选商品</a>
        </div>
    </div>
</header>

<!-- 服务说明 -->
<section id="services">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">我们的服务</h2>
                <h3 class="section-subheading text-muted">品种全、价格低、发货迅速 - 多年的酒店宾馆用品服务</h3>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-md-4">
                <span class="fa-stack fa-4x">
                    <i class="fa fa-circle fa-stack-2x text-primary"></i>
                    <i class="fa fa-thumbs-up fa-stack-1x fa-inverse"></i>
                </span>
                <h4 class="service-heading">经验丰富</h4>
                <p class="text-muted">我们拥有一流的产品经验，从事该行业10多年，深入了解酒店、宾馆、浴室等大型场所的各种产品，专业的水平让您放心。</p>
            </div>
            <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-user fa-stack-1x fa-inverse"></i>
                    </span>
                <h4 class="service-heading">客户群体广</h4>
                <p class="text-muted">我们的客户来自祖国各地，各大知名宾馆、酒店、浴场等都与我公司进行合作，了解各种客户的需求，满足各种客户的定制。</p>
            </div>
            <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-magic fa-stack-1x fa-inverse"></i>
                    </span>
                <h4 class="service-heading">产品类型多</h4>
                <p class="text-muted">我们的产品种类多，每种产品类别多，只要您需要的，我们都会尽可能的满足。因为我们只专注于专业。</p>
            </div>
        </div>
    </div>
</section>

<!-- 新品展示 -->
<section id="portfolio" class="bg-light-gray">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">新品展示</h2>
                <h3 class="section-subheading text-muted">新到的产品我们与您分享，看看是否有您中意的产品吧!</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fa fa-eye fa-3x"></i>
                        </div>
                    </div>
                    <img src="${path}/resources/img/product/jd-01.jpg" class="img-responsive" alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>冷柜</h4>
                    <p class="text-muted">供应商用冷柜、厨房冷柜、制冷设备</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fa fa-eye fa-3x"></i>
                        </div>
                    </div>
                    <img src="${path}/resources/img/product/jd-02.jpg" class="img-responsive" alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>蛋糕柜</h4>
                    <p class="text-muted">供应立式、生日、面包店蛋糕柜/保鲜柜</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fa fa-eye fa-3x"></i>
                        </div>
                    </div>
                    <img src="${path}/resources/img/product/jd-03.jpg" class="img-responsive" alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>保险箱</h4>
                    <p class="text-muted">供应全能家用保险箱防盗保险柜坚固防撬</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fa fa-eye fa-3x"></i>
                        </div>
                    </div>
                    <img src="${path}/resources/img/product/jd-04.jpg" class="img-responsive" alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>冰激凌、冷饮机</h4>
                    <p class="text-muted">供应冰淇淋机、雪融机、冷饮机、多功能热饮机、果汁机</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fa fa-eye fa-3x"></i>
                        </div>
                    </div>
                    <img src="${path}/resources/img/product/jd-05.jpg" class="img-responsive" alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>制冰机</h4>
                    <p class="text-muted">供应制冷设备、酒店冰箱、低温水箱、工程制冰机、商用制冰机</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 portfolio-item">
                <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content">
                            <i class="fa fa-eye fa-3x"></i>
                        </div>
                    </div>
                    <img src="${path}/resources/img/product/jd-06.jpg" class="img-responsive" alt="">
                </a>
                <div class="portfolio-caption">
                    <h4>供应座地灯箱系列</h4>
                    <p class="text-muted">各式座地灯箱</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="partner">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">合作伙伴</h2>
            </div>
            <div class="col-sm-4 text-center">
                <h3>酒店</h3>
                <p><a href="#">AAAA酒店</a></p>
                <p><a href="#">BBBB酒店</a></p>
                <p><a href="#">CCCC酒店</a></p>
                <p><a href="#">DDDD酒店</a></p>
                <p><a href="#">EEEE酒店</a></p>
                <p><a href="#">FFFF酒店</a></p>
                <p><a href="#">GGGG酒店</a></p>
                <p><a href="#">HHHH酒店</a></p>
            </div>
            <div class="col-sm-4 text-center">
                <h3>宾馆</h3>
                <p><a href="#">AAAA宾馆</a></p>
                <p><a href="#">BBBB宾馆</a></p>
                <p><a href="#">CCCC宾馆</a></p>
                <p><a href="#">DDDD宾馆</a></p>
                <p><a href="#">EEEE宾馆</a></p>
                <p><a href="#">FFFF宾馆</a></p>
                <p><a href="#">GGGG宾馆</a></p>
                <p><a href="#">HHHH宾馆</a></p>
            </div>
            <div class="col-sm-4 text-center">
                <h3>浴室</h3>
                <p><a href="#">AAAA浴室</a></p>
                <p><a href="#">BBBB浴室</a></p>
                <p><a href="#">CCCC浴室</a></p>
                <p><a href="#">DDDD浴室</a></p>
                <p><a href="#">EEEE浴室</a></p>
                <p><a href="#">FFFF浴室</a></p>
                <p><a href="#">GGGG浴室</a></p>
                <p><a href="#">HHHH浴室</a></p>
            </div>
        </div>
    </div>
</section>

<footer class="bg-light-gray">
    <div class="container">
        <div class="row">
            <p>本站由月升宾馆酒店用品提供服务。Powered by yuesheng。</p>
            <p>&copy; 2015-2016 Yueshengjdyp.com 版权所有 ICP证：京BB-2222222</p>
        </div>
    </div>
</footer>


<!-- Portfolio Modals -->
<!-- Use the modals below to showcase details about your portfolio projects! -->

<!-- Portfolio Modal 1 -->
<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <!-- Project Details Go Here -->
                        <h2>冷柜</h2>
                        <p class="item-intro text-muted">供应商用冷柜、厨房冷柜、制冷设备</p>
                        <img class="img-responsive img-centered" src="${path}/resources/img/product/jd-01.jpg" alt="">
                        <p>
                            <ol>
                                <li>高效节能机组，一体式设计，真正做到低噪音，高能效，环保节能，安全，稳定</li>
                                <li>全优化高效3D立体制冷系统，风冷/直冷可选，能保证在均匀的温度中，食品高保鲜度；</li>
                                <li>微电子中央处理器，精确控温，误差更小，操作更简便，液晶数字清晰显示温度；</li>
                                <li>独特的高效快速制冷技术，纯铜管蒸发器，将先进的控制器、3D多循环制冷系统优势组合速度更快捷；</li>
                                <li>聚氨酯整体发泡技术，环保发泡材料，高强度、高密度、节能设计有效减少能量消耗；</li>
                                <li>全不锈钢板外壳及内胆，超强抗腐蚀，经久耐用，易清洁不变形；</li>
                                <li>燕尾式门封条结构，密封严实、整齐、易更换，清洗；</li>
                                <li>标配不锈钢无焊点储物架，高度自由调整，随意规划储蓄空间，物品存放更简单，展示效果更美观；</li>
                                <li>万向脚轮带有自锁装置，可拆卸万向脚轮和可拆卸调节脚互换，移动、使用两方便；</li>
                                <li>宽气候带设计，适用范围广，使用更放心。</li>
                            </ol>
                        </p>
                        <ul class="list-inline">
                            <li>$价钱: XXX</li>
                            <li>数量: XXX</li>
                            <li>类别: XXX</li>
                        </ul>
                        <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Portfolio Modal 2 -->
<div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h2>蛋糕柜</h2>
                        <p class="item-intro text-muted">供应立式、生日、面包店蛋糕柜/保鲜柜</p>
                        <img class="img-responsive img-centered" src="${path}/resources/img/product/jd-02.jpg" alt="">
                        <p>
                            <strong>产品特点：</strong>1、正面双弧形钢化中空玻璃，豪华庄重；2、采用进口世界名牌压缩机，制冷强劲，高度保温；3、微电脑控温精确，液晶显示器准确反映柜内温度变化；
                            4、典雅高中的各色天然花岗装饰面板，可任意选择5、可选择大理石和不锈钢材质
                        </p>
                        <ul class="list-inline">
                            <li>$价钱: XXX</li>
                            <li>数量: XXX</li>
                            <li>类别: XXX</li>
                        </ul>
                        <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Portfolio Modal 3 -->
<div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <!-- Project Details Go Here -->
                        <h2>保险箱</h2>
                        <p class="item-intro text-muted"供应全能家用保险箱防盗保险柜坚固防撬</p>
                        <img class="img-responsive img-centered" src="${path}/resources/img/product/jd-03.jpg" alt="">
                        <p>Treehouse is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. This is bright and spacious design perfect for people or startup companies looking to showcase their apps or other projects.</p>
                        <ul class="list-inline">
                            <li>$价钱: XXX</li>
                            <li>数量: XXX</li>
                            <li>类别: XXX</li>
                        </ul>
                        <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Portfolio Modal 4 -->
<div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <!-- Project Details Go Here -->
                        <h2>冰激凌、冷饮机</h2>
                        <p class="item-intro text-muted">供应冰淇淋机、雪融机、冷饮机、多功能热饮机、果汁机</p>
                        <img class="img-responsive img-centered" src="${path}/resources/img/product/jd-04.jpg" alt="">
                        <p>Start Bootstrap's Agency theme is based on Golden, a free PSD website template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Golden is a modern and clean one page web template that was made exclusively for Best PSD Freebies. This template has a great portfolio, timeline, and meet your team sections that can be easily modified to fit your needs.</p>
                        <ul class="list-inline">
                            <li>$价钱: XXX</li>
                            <li>数量: XXX</li>
                            <li>类别: XXX</li>
                        </ul>
                        <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Portfolio Modal 5 -->
<div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <!-- Project Details Go Here -->
                        <h2>制冰机</h2>
                        <p class="item-intro text-muted">供应制冷设备、酒店冰箱、低温水箱、工程制冰机、商用制冰机</p>
                        <img class="img-responsive img-centered" src="${path}/resources/img/product/jd-05.jpg" alt="">
                        <p>Escape is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Escape is a one page web template that was designed with agencies in mind. This template is ideal for those looking for a simple one page solution to describe your business and offer your services.</p>
                        <ul class="list-inline">
                            <li>$价钱: XXX</li>
                            <li>数量: XXX</li>
                            <li>类别: XXX</li>
                        </ul>
                        <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Portfolio Modal 6 -->
<div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <!-- Project Details Go Here -->
                        <h2>供应座地灯箱系列</h2>
                        <p class="item-intro text-muted">各式座地灯箱</p>
                        <img class="img-responsive img-centered" src="${path}/resources/img/product/jd-06.jpg" alt="">
                        <p>Dreams is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Dreams is a modern one page web template designed for almost any purpose. It’s a beautiful template that’s designed with the Bootstrap framework in mind.</p>
                        <ul class="list-inline">
                            <li>$价钱: XXX</li>
                            <li>数量: XXX</li>
                            <li>类别: XXX</li>
                        </ul>
                        <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> 关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

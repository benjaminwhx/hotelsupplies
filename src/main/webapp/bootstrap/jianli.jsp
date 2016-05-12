<%--
  Created by IntelliJ IDEA.
  User: piqiu
  Date: 16/3/18
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <%@ include file="/WEB-INF/pages/common/meta.jsp" %>
    <title>个人简历</title>
    <%@ include file="/WEB-INF/pages/common/travel-resources.jsp" %>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/style.css">
    <!--- Goog Fonts -->
    <link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
</head>
<body>

    <!-- 开头的背景图片和头像 -->
    <div class="header">
        <div class="container">
            <div class="header-profile">
                <img src="${path}/resources/img/profile.png" alt="">
            </div>
        </div>
    </div>

    <!-- 头像下的说明 -->
    <div class="header-top">
        <h2>Benjamin Wu</h2>
        <small>Java & iOS Developer</small>
    </div>

    <div class="about">
        <div class="container">
            <div class="about-top">
                <h3 class="top-title">About Me</h3>
                <span class="line"></span>
                <p class="about-p">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. </p>
                <p>when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>
                <div class="row about-row">
                    <div class="col-md-4 about-row-column">
                        <ul class="about-details">
                            <li><p>Birthday: <span>2/12/1992</span></p></li>
                            <li><p>Phone: <span>+86 18513429793</span></p></li>
                            <li><p>Email:  <span><a href="mailto:benjaminwhx@sina.com">benjaminwhx@sina.com</a></span></p></li>
                            <li><p>Website: <span><a href="http://benjaminwhx.com">www.benjaminwhx.com</a></span></p></li>
                        </ul>
                    </div>
                    <div class="col-md-8 about-row-column">
                        <h3>HOBBIES & INTERESTS</h3>
                        <ul class="hoby">
                            <li><i class="tv"></i></li>
                            <li><i class="car"></i></li>
                            <li><i class="music"></i></li>
                            <li><i class="shopping"></i></li>
                            <li><i class="reading"></i></li>
                            <li><i class="travel"></i></li>
                            <li><i class="tea"></i></li>
                        </ul>
                        <a href="" class="download"><span></span>Download Resume</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>

    <!--- About Me Ends Here --->
    <!--- Experience Starts Here --->
    <div class="experience">
        <div class="container">
            <div class="exp-top">
                <h3 class="top-title">About</h3>
                <span class="line"></span>
            </div>
            <div class="exp-devide">
                <h4>Experience</h4>
				<span class="devide-line">
				</span>
                <label class="bag"></label>
                <div class="exp-devide-grid-right">
                    <h5>SENIOR UI/UX DESIGNER</h5>
                    <small>Google - 2013 . Current</small>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                </div>
                <div class="exp-devide-grid-left">
                    <h5>JUNIOR UI DESIGNER</h5>
                    <small>Microsoft - 2010 . 2012</small>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                </div>
                <div class="exp-devide-grid-rightb">
                    <h5>UI/UX DESIGNER</h5>
                    <small>IBM - 2006 . 2010</small>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                </div>
            </div>
            <div class="exp-devide education">
                <h4>Education</h4>
				<span class="devide-line">
				</span>
                <label class="book"></label>
                <div class="exp-devide-grid-right">
                    <h5>MASTERS DEGREE</h5>
                    <small>Modern Sciences & Arts University - 2014 . 2012</small>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                </div>
                <div class="exp-devide-grid-left">
                    <h5>BACHELORS DEGREE</h5>
                    <small>Modern Sciences & Arts University - 2012 . 2010</small>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                </div>
                <div class="exp-devide-grid-rightb">
                    <h5>GRADUATION</h5>
                    <small>Modern Sciences & Arts University - Faculty of Computer Science - 2006 . 2010</small>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                </div>
            </div>
        </div>
    </div>
    <!--- Experience Ends Here --->
    <!--- Skills Starts Here --->
    <div class="skills">
        <div class="container">
            <div class="skills-top">
                <h3 class="top-title">Skills</h3>
                <span class="line"></span>
                <div class="row skill-grids text-center">
                    <div class="col-md-3 skill-column">
                        <div class="skill-grid">
                            <div class="circle" id="circles-1"></div>
                            <h3>PHOTOSHOP</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>
                    <div class="col-md-3 skill-column">
                        <div class="skill-grid">
                            <div class="circle" id="circles-2"></div>
                            <h3>ILLUSTRATOR</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>
                    <div class="col-md-3 skill-column">
                        <div class="skill-grid">
                            <div class="circle" id="circles-3"></div>
                            <h3>HTML/CSS</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>
                    <div class="col-md-3 skill-column">
                        <div class="skill-grid">
                            <div class="circle" id="circles-4"></div>
                            <h3>JAVASCRIPT</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--- Skill Script --->
        <script type="text/javascript" src="${path}/resources/js/circles.js"></script>
        <script>
            var colors = [
                ['#fff', '#2980b9'], ['#fff', '#2980b9'], ['#fff', '#2980b9'], ['#fff', '#2980b9']
            ];
            for (var i = 1; i <= 6; i++) {
                var child = document.getElementById('circles-' + i),
                        percentage = 50 + (i * 10);

                Circles.create({
                    id:         child.id,
                    percentage: percentage,
                    radius:     80,
                    width:      15,
                    number:   	percentage / 10,
                    text:       '%',
                    colors:     colors[i - 1]
                });
            }

        </script>
        <!--- Skill Script --->
    </div>
    <!--- Skills Ends Here --->
    <!-- Social Media Connections ---->
    <div class="social-media">
        <div class="container">
            <div class="social-media-top">
                <h3 class="top-title">SOCIAL MEDIA CONNECTIONS</h3>
                <span class="line"></span>
                <ul class="social">
                    <li><i class="fb"></i></li>
                    <li><i class="tw"></i></li>
                    <li><i class="li"></i></li>
                    <li><i class="yt"></i></li>
                    <li><i class="ca"></i></li>
                    <li><i class="ph"></i></li>
                    <li><i class="gp"></i></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Social Media Connections ---->
    <!--- Awards Starts Here ---->
    <div class="awards">
        <div class="container">
            <div class="awards-top">
                <h3 class="top-title">AWARDS & ACHIEVEMENTS</h3>
                <span class="line"></span>
                <div class="row award-row">
                    <div class="col-md-3 award-column">
                        <i class="award"></i>
                        <h5>50</h5>
                        <small>Awards Won!</small>
                    </div>
                    <div class="col-md-3 award-column">
                        <i class="project"></i>
                        <h5>570</h5>
                        <small>PROJECTS DONE</small>
                    </div>
                    <div class="col-md-3 award-column">
                        <i class="client"></i>
                        <h5>215</h5>
                        <small>HAPPY CLIENTS</small>
                    </div>
                    <div class="col-md-3 award-column">
                        <i class="cups"></i>
                        <h5>2145</h5>
                        <small>CUPS OF COFFEE</small>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <!--- Awards Ends Here ---->
    <!--- Twitter Feed Starts Here ---->
    <div class="twitter">
        <div class="container">
            <div class="twitter-top">
                <i class="twit"></i>
                <span class="line"></span>
                <!-- Slideshow 4 -->
                <div  id="top" class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <div class="slider-top">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem<br>Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                        </li>
                        <li>
                            <div class="slider-top">
                                <p>simply dummy text of the Lorem Ipsum is printing and typesetting industry. Lorem<br>Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                        </li>
                        <li>
                            <div class="slider-top">
                                <p>printing and typesetting Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem<br>Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                        </li>
                        <li>
                            <div class="slider-top">
                                <p>and typesetting Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem<br>Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                        </li>
                        <li>
                            <div class="slider-top">
                                <p>typesetting Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem<br>Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
            <!--- Slider Script --->
            <script src="${path}/resources/js/responsiveslides.min.js"></script>
            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider4").responsiveSlides({
                        auto: true,
                        pager: true,
                        nav: true,
                        speed: 500,
                        namespace: "callbacks",
                        before: function () {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function () {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });

                });
            </script>
            <!----//End-slider-script---->

        </div>
    </div>
    <!--- Twitter Feed Ends Here ---->
    <!--- Contact Starts Here ---->
    <div class="contact">
        <div class="container">
            <div class="contact-top">
                <h3 class="top-title">Contact Me</h3>
                <span class="line"></span>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem<br>Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                <div class="row contact-row">
                    <div class="col-md-4 contact-column">
                        <i class="loc"></i>
                        <p>123 Ipsy Street,<br> Lorem, Ipsy</p>
                    </div>
                    <div class="col-md-4 contact-column">
                        <i class="mail"></i>
                        <p><a href="mailto:example@gmail.com">loremipsy@gmail.com</a></p>
                    </div>
                    <div class="col-md-4 contact-column">
                        <i class="phone"></i>
                        <p>+123 456 789<br>+987 654 321</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="contact-form">
                    <div class="text">
                        <input type="text" value="Your Name.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Name..';}"/>
                    </div>
                    <div class="text">
                        <input type="text" value="Your Email.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email..';}"/>
                    </div>
                    <div class="text">
                        <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Your Message..</textarea>
                    </div>
                    <div class="text">
                        <input type="submit"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--- Contact Ends Here ---->
    <!--- Footer Starts Here ---->
    <div class="footer">
        <div class="container">
            <p class="copyright">Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://www.freemoban.com/">www.freemoban.com</a></p>
        </div>
    </div>
    <!--- Footer Ends Here ---->
</body>
</html>

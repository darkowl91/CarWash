<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<section id="feature_slider" class="">
    <!--
        Each slide is composed by <img> and .info
        - .info's position is customized with css in index.css
        - each <img> parallax effect is declared by the following params inside its class:

        example: class="asset left-472 sp600 t120 z3"
        left-472 means left: -472px from the center
        sp600 is speed transition
        t120 is top to 120px
        z3 is z-index to 3
        Note: Maintain this order of params

        For the backgrounds, you can combine from the bgs folder :D
    -->
    <article class="slide" id="showcasing"

             style="background: url('<c:url value="/resources/img/backgrounds/landscape.png"/>') repeat-x top center;">
        <img class="asset left-30 sp600 t120 z1" src="<c:url value="/resources/img/slides/scene1/s1.png"/>"/>

        <div class="info">
            <h2><spring:message code="carWash.welcome.paint"/> </h2>
        </div>
    </article>

    <article class="slide" id="ideas" style="background: url('<c:url value="/resources/img/backgrounds/aqua.jpg"/>') repeat-x top center;">
        <div class="info">
            <h2><spring:message code="carWash.welcome.repair"/></h2>
        </div>
        <img class="asset left-480 sp600 t260 z1" src="<c:url value="/resources/img/slides/scene2/s2_left.png"/>"/>
        <img class="asset left-210 sp600 t213 z2" src="<c:url value="/resources/img/slides/scene2/s2_middle.png"/>"/>
    </article>

    <article class="slide" id="tour" style="background: url('<c:url value="/resources/img/backgrounds/color-splash.jpg"/>') repeat-x top center;">
        <img class="asset left-472 sp650 t210 z3" src="<c:url value="/resources/img/slides/scene3/s3_down.png"/>"/>
        <div class="info">
            <h2><spring:message code="carWash.welcome.polish"/></h2>
            <a href="features.html"><spring:message code="carWash.welcome.orderService"/></a>
        </div>
    </article>
    <article class="slide" id="responsive" style="background: url('<c:url value="/resources/img/backgrounds/indigo.jpg"/>') repeat-x top center;">
        <img class="asset left-472 sp600 t120 z3" src="<c:url value="/resources/img/slides/scene4/s4.png"/>"/>

        <div class="info">
            <h2>
                <spring:message code="carWash.welcome.quality"/><strong> <spring:message code="carWash.welcome.repairPaint"/></strong>
                <spring:message code="carWash.welcome.auto"/>
            </h2>
        </div>
    </article>
</section>

<div id="showcase">
    <div class="container">
        <div class="section_header">
            <h3>Our Services</h3>
        </div>
        <div class="row feature_wrapper">
            <!-- Features Row -->
            <div class="features_op1_row">
                <!-- Feature -->
                <div class="span4 feature first">
                    <div class="img_box">
                        <a href="services.html">
                            <img src="<c:url value="/resources/img/service1.png"/>"/>
                                <span class="circle">
                                    <span class="plus">&#43;</span>
                                </span>
                        </a>
                    </div>
                    <div class="text">
                        <h6>Responsive theme</h6>

                        <p>
                            There are many variations of passages of generators on the embarrassing hidden in content
                            here making it look like.
                        </p>
                    </div>
                </div>
                <!-- Feature -->
                <div class="span4 feature">
                    <div class="img_box">
                        <a href="services.html">
                            <img src="<c:url value="/resources/img/service2.png"/>"/>
                                <span class="circle">
                                    <span class="plus">&#43;</span>
                                </span>
                        </a>
                    </div>
                    <div class="text">
                        <h6>Easy customization</h6>

                        <p>
                            There are many variations of passages of generators on the embarrassing hidden in content
                            here making it look like.
                        </p>
                    </div>
                </div>
                <!-- Feature -->
                <div class="span4 feature last">
                    <div class="img_box">
                        <a href="services.html">
                            <img src="<c:url value="/resources/img/service3.png"/>"/>
                                <span class="circle">
                                    <span class="plus">&#43;</span>
                                </span>
                        </a>
                    </div>
                    <div class="text">
                        <h6>Made with love</h6>

                        <p>
                            There are many variations of passages of generators on the embarrassing hidden in content
                            here making it look like.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="features">
    <div class="container">
        <div class="section_header">
            <h3>Features</h3>
        </div>
        <div class="row feature">
            <div class="span6">
                <img src="<c:url value="/resources/img/showcase1.png"/>"/>
            </div>
            <div class="span6 info">
                <h3>
                    <img src="<c:url value="/resources/img/features-ico1.png"/>"/>
                    Beautiful on all devices
                </h3>

                <p>
                    There are many variations of passages of Lorem Ipsum available, but the randomised words which don't
                    look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure
                    there isn't anything embarrassing hidden in the middle of text.
                </p>
            </div>
        </div>
        <div class="row feature ss">
            <div class="span6 info">
                <h3>
                    <img src="<c:url value="/resources/img/features-ico2.png"/>"/>
                    Blog page included
                </h3>

                <p>
                    There are many variations of passages of Lorem Ipsum available, but the randomised words which don't
                    look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure
                    there isn't anything embarrassing hidden in the middle of text.
                </p>
            </div>
            <div class="span6">
                <img src="<c:url value="/resources/img/showcase2.png"/>" class="pull-right"/>
            </div>
        </div>
        <div class="row feature ss">
            <div class="span6">
                <img src="<c:url value="/resources/img/showcase3.png"/>"/>
            </div>
            <div class="span6 info">
                <h3>
                    <img src="<c:url value="/resources/img/features-ico3.png"/>"/>
                    Simple and clean coming soon page
                </h3>

                <p>
                    There are many variations of passages of Lorem Ipsum available, but the randomised words which don't
                    look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure
                    there isn't anything embarrassing hidden in the middle of text.
                </p>
            </div>
        </div>
    </div>
</div>


<!-- Pricing Option -->
<div id="in_pricing">
    <div class="container">
        <div class="section_header">
            <h3>Pricing</h3>
        </div>

        <div class="row charts_wrapp">
            <!-- Plan Box -->
            <div class="span4">
                <div class="plan">
                    <div class="wrapper">
                        <h3>Lite</h3>

                        <div class="price">
                            <span class="dollar">$</span>
                            <span class="qty">35</span>
                            <span class="month">/month</span>
                        </div>
                        <div class="features">
                            <p>
                                <strong>10</strong>
                                Shared Projects
                            </p>

                            <p>
                                <strong>4</strong>
                                Team Members
                            </p>

                            <p>
                                <strong>10</strong>
                                Storage
                            </p>
                        </div>
                        <a class="order" href="pricing.html">ORDER NOW</a>
                    </div>
                </div>
            </div>
            <!-- Plan Box -->
            <div class="span4 pro">
                <div class="plan">
                    <div class="wrapper">
                        <img class="ribbon" src="<c:url value="/resources/img/badge.png"/>"/>

                        <h3>Pro</h3>

                        <div class="price">
                            <span class="dollar">$</span>
                            <span class="qty">99</span>
                            <span class="month">/month</span>
                        </div>
                        <div class="features">
                            <p>
                                <strong>10</strong>
                                Shared Projects
                            </p>

                            <p>
                                <strong>25</strong>
                                Team Members
                            </p>

                            <p>
                                <strong>Unlimited</strong>
                                Storage
                            </p>

                            <p>
                                <strong>Plus </strong>
                                Phone Support
                            </p>
                        </div>
                        <a class="order" href="pricing.html">ORDER NOW</a>
                    </div>
                </div>
            </div>
            <!-- Plan Box -->
            <div class="span4 standar">
                <div class="plan">
                    <div class="wrapper">
                        <h3>Standard</h3>

                        <div class="price">
                            <span class="dollar">$</span>
                            <span class="qty">65</span>
                            <span class="month">/month</span>
                        </div>
                        <div class="features">
                            <p>
                                <strong>10</strong>
                                Shared Projects
                            </p>

                            <p>
                                <strong>4</strong>
                                Team Members
                            </p>

                            <p>
                                <strong>10</strong>
                                Storage
                            </p>
                        </div>
                        <a class="order" href="pricing.html">ORDER NOW</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="start">
            <p>Start your free, no-risk, 14 day trial! </p>
            <a href="pricing.html">Start Now!</a>
        </div>
    </div>
</div>

<div id="clients">
    <div class="container">
        <div class="section_header">
            <h3>Clients</h3>
        </div>
        <div class="row">
            <div class="span2 client">
                <div class="img client1"></div>
            </div>
            <div class="span2 client">
                <div class="img client2"></div>
            </div>
            <div class="span2 client">
                <div class="img client3"></div>
            </div>
            <div class="span2 client">
                <div class="img client1"></div>
            </div>
            <div class="span2 client">
                <div class="img client2"></div>
            </div>
            <div class="span2 client">
                <div class="img client3"></div>
            </div>
        </div>
    </div>
</div>

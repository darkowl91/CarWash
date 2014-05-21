<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
    <article class="slide" id="showcasing" style="background: url('<c:url value="/resources/img/backgrounds/landscape.png"/>') repeat-x top center;">
        <img class="asset left-30 sp600 t10 z1" src="<c:url value="/resources/img/slides/scene1/s1.png"/>"/>
        <div class="info">
            <h2><spring:message code="carWash.welcome.paint"/> </h2>
        </div>
    </article>

    <article class="slide" id="ideas" style="background: url('<c:url value="/resources/img/backgrounds/aqua.jpg"/>') repeat-x top center;">
        <div class="info">
            <h2><spring:message code="carWash.welcome.repair"/></h2>
        </div>
        <img class="asset left-480 sp600 t200 z1" src="<c:url value="/resources/img/slides/scene2/s2_left.png"/>"/>
        <img class="asset left-210 sp600 t180 z2" src="<c:url value="/resources/img/slides/scene2/s2_middle.png"/>"/>
    </article>

    <article class="slide" id="tour" style="background: url('<c:url value="/resources/img/backgrounds/color-splash.jpg"/>') repeat-x top center;">
        <img class="asset left-472 sp650 t-50 z3" src="<c:url value="/resources/img/slides/scene3/s3_down.png"/>"/>
        <div class="info">
            <h2><spring:message code="carWash.welcome.polish"/></h2>
            <a href="<c:url value="/viewServiceList"/>"><spring:message code="carWash.welcome.orderService"/></a>
        </div>
    </article>
    <article class="slide" id="responsive" style="background: url('<c:url value="/resources/img/backgrounds/indigo.jpg"/>') repeat-x top center;">
        <img class="asset left-472 sp600 t50 z3" src="<c:url value="/resources/img/slides/scene4/s4.png"/>"/>

        <div class="info">
            <h2>
                <spring:message code="carWash.welcome.quality"/><strong> <spring:message code="carWash.welcome.repairPaint"/></strong>
                <spring:message code="carWash.welcome.auto"/>
            </h2>
        </div>
    </article>
</section>

<div id="features">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.welcome.features"/></h3>
        </div>
        <div class="row feature">
            <div class="span6">
                <img src="<c:url value="/resources/img/showcase1.jpg"/>"/>
            </div>
            <div class="span6 info">
                <h3>
                    <i class="icon-pencil"></i>
                    <spring:message code="carWash.welcome.paint"/>
                </h3>

                <p>
                    <spring:message code="carWash.welcome.paint.decryption"/>
                </p>
            </div>
        </div>
        <div class="row feature ss">
            <div class="span6 info">
                <h3>
                   <i class="icon-adjust"></i>
                   <spring:message code="carWash.welcome.repair"/>
                </h3>

                <p>
                    <spring:message code="carWash.welcome.repair.decryption"/>
                </p>
            </div>
            <div class="span6">
                <img src="<c:url value="/resources/img/showcase2.png"/>" class="pull-right"/>
            </div>
        </div>
        <div class="row feature ss">
            <div class="span6">
                <img src="<c:url value="/resources/img/showcase3.jpg"/>"/>
            </div>
            <div class="span6 info">
                <h3>
                    <i class="icon-star"></i>
                    <spring:message code="carWash.welcome.polish"/>
                </h3>

                <p>
                    <spring:message code="carWash.welcome.polish.decryption"/>
                </p>
            </div>
        </div>
    </div>
</div>


<!-- Pricing Option -->
<div id="in_pricing">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.welcome.pricing"/></h3>
        </div>

        <div class="row charts_wrapp">
            <!-- Plan Box -->
            <div class="span4">
                <div class="plan">
                    <div class="wrapper">
                        <h3><spring:message code="carWash.welcome.polish"/></h3>

                        <div class="price">
                            <span class="month"><spring:message code="carWash.welcome.from"/></span>
                            <span class="dollar">$</span>
                            <span class="qty">35</span>
                        </div>
                        <div class="features">
                            <p>
                                <strong>1</strong>
                                <spring:message code="carWash.welcome.warranty"/>
                            </p>

                            <p>
                                <spring:message code="carWash.welcome.polish.decription"/>
                            </p>
                        </div>
                        <a class="order" href="<c:url value="/viewServiceList"/>"><spring:message code="carWash.welcome.orderNow"/></a>
                    </div>
                </div>
            </div>
            <!-- Plan Box -->
            <div class="span4 pro">
                <div class="plan">
                    <div class="wrapper">
                        <img class="ribbon" src="<c:url value="/resources/img/badge.png"/>"/>

                        <h3><spring:message code="carWash.welcome.repair"/></h3>

                        <div class="price">
                            <span class="month"><spring:message code="carWash.welcome.from"/></span>
                            <span class="dollar">$</span>
                            <span class="qty">99</span>
                        </div>
                        <div class="features">
                            <p>
                                <strong>1</strong>
                                <spring:message code="carWash.welcome.warranty"/>
                            </p>

                            <p>
                                <spring:message code="carWash.welcome.repair.decryption"/>
                            </p>
                        </div>
                        <a class="order" href="<c:url value="/viewServiceList"/>"><spring:message code="carWash.welcome.orderNow"/></a>
                    </div>
                </div>
            </div>
            <!-- Plan Box -->
            <div class="span4 standar">
                <div class="plan">
                    <div class="wrapper">
                        <h3><spring:message code="carWash.welcome.paint"/></h3>

                        <div class="price">
                            <span class="month"><spring:message code="carWash.welcome.from"/></span>
                            <span class="dollar">$</span>
                            <span class="qty">65</span>
                        </div>
                        <div class="features">
                            <p>
                                <strong>2</strong>
                                <spring:message code="carWash.welcome.warranty"/>
                            </p>

                            <p>
                                <spring:message code="carWash.welcome.paint.decryption"/>
                            </p>
                        </div>
                        <a class="order" href="<c:url value="/viewServiceList"/>"><spring:message code="carWash.welcome.orderNow"/></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="start">
            <p><spring:message code="carWash.welcome.order"/></p>
            <a href="<c:url value="/viewServiceList"/>"><spring:message code="carWash.welcome.orderList"/></a>
        </div>
    </div>
</div>
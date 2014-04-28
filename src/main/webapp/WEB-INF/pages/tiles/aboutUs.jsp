<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="aboutus">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="aboutUs.about"/></h3>
        </div>
        <div class="row">
            <div class="span6 intro">
                <h6></h6>
                <p>
                    <spring:message code="aboutUs.info"/>
                    <br/><br/>
                    <spring:message code="aboutUs.endInfo"/>
                </p>
            </div>
            <div class="span6 flexslider">
                <ul class="slides">
                    <li>
                        <img src="<c:url value="/resources/img/aboutSlide1.jpg"/>"/>
                    </li>
                    <li>
                        <img src="<c:url value="/resources/img/aboutSlide2.jpg"/>"/>
                    </li>
                    <li>
                        <img src="<c:url value="/resources/img/aboutSlide3.jpg"/>"/>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="team">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="aboutUs.team"/> </h3>
        </div>

        <div class="row people">
            <div class="row row1">
                <div class="span6 bio_box">
                    <img width="100px" height="100px" src="<c:url value="/resources/img/Mihalych.jpg"/>" alt=""/>

                    <div class="info">
                        <p class="name">Alejandra Galvan Castillo</p>

                        <p class="area">Creative Director</p>
                    </div>
                </div>

                <div class="span6 bio_box bio_boxr">
                    <img width="100px" height="100px" src="<c:url value="/resources/img/Petya.jpg"/>" alt=""/>

                    <div class="info">
                        <p class="name">Alejandra Galvan Castillo</p>

                        <p class="area">Creative Director</p>
                    </div>
                </div>
            </div>

            <div class="row row1">
                <div class="span6 bio_box">
                    <img width="100px" height="100px" src="<c:url value="/resources/img/Vasia.jpg"/>" alt=""/>

                    <div class="info">
                        <p class="name">Alejandra Galvan Castillo</p>

                        <p class="area">Creative Director</p>
                    </div>
                </div>

                <div class="span6 bio_box bio_boxr">
                    <img width="100px" height="100px" src="<c:url value="/resources/img/Sanya.jpg"/>" alt=""/>

                    <div class="info">
                        <p class="name">Alejandra Galvan Castillo</p>

                        <p class="area">Creative Director</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="process">
    <div class="container">
        <div class="section_header">
            <h3>Our Process</h3>
        </div>
        <div class="row services_circles">
            <div class="span4 description">
                <div class="text active">
                    <h4>Plan what you need.</h4>

                    <p>
                        There are many variations of passages of this suffered alteration in some form, by injected look
                        even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to making
                        this the first true generator Internet.</p>
                </div>
                <div class="text">
                    <h4>Develop your product or service.</h4>

                    <p>
                        There are many variations of passages of this suffered alteration in some form, by injected look
                        even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to
                        making this the first true generator Internet.</p>
                </div>
                <div class="text">
                    <h4>Design this theme to your needs.</h4>

                    <p>
                        There are many variations of passages of this suffered alteration in some form, by injected look
                        even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to making
                        this the first true generator Internet.</p>
                </div>
            </div>

            <div class="span7 areas">
                <div class="circle active">
                    <img src="<c:url value="/resources/img/plan.png"/>"/>
                    <span>Plan</span>
                </div>
                <div class="circle">
                    <img src="<c:url value="/resources/img/develop.png"/>"/>
                    <span>Develop</span>
                </div>
                <div class="circle last_circle">
                    <img src="<c:url value="/resources/img/design.png"/>"/>
                    <span>Design</span>
                </div>
            </div>
        </div>
    </div>
</div>
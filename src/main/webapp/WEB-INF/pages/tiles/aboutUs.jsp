<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
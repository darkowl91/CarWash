<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="in_pricing">
    <div class="container">
        <div class="head">
            <h3><spring:message code="carWash.pricing.services"/></h3>
            <h6><spring:message code="carWash.pricing.service"/></h6>
        </div>
    </div>
</div>

<div id="in_pricing2">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.pricing.available"/></h3>
        </div>
        <div class="row charts_wrapp">
            <c:forEach var="servise" items="${SERVICES}">
                <!-- Plan Box -->
                <div class="span3">
                <div class="plan">
                    <div class="wrapper">
                        <h3>Lite</h3>
                        <div class="price">
                            <span class="dollar">$</span>
                            <span class="qty">35</span>
                            <span class="month">/month</span>
                        </div>
                        <div class="features">
                            <p>*
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
                        <a class="order" href="#">ORDER NOW</a>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>

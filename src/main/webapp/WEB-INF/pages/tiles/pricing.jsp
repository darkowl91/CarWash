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
            <c:forEach var="service" items="${SERVICES}">
                <div class="span3">
                <div class="plan">
                    <div class="wrapper">
                        <h5>${service.name}</h5>

                        <div class="price">
                            <span class="dollar">${service.price}$</span>
                        </div>
                        <div class="features">
                            <p>
                                <strong><spring:message code="carWash.pricing.warranty"/>:</strong>
                                    ${service.warranty}
                            </p>

                            <p>
                                    ${service.description}
                            </p>
                        </div>
                        <a class="order" href="${service.id}"><spring:message code="carWash.pricing.order"/></a>
                    </div>
                </div>
                    <br/>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

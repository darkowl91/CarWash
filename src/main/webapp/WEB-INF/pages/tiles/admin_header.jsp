<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="navbar navbar-inverse navbar-static-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="index.html">
                <strong><spring:message code="carWash.admin.header.carWash"/></strong>
            </a>

            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li><a href="index.html"><spring:message code="carWash.admin.header.home"/></a></li>
                    <li><a href=""></a></li>
                    <li><a href=""><spring:message code="carWash.admin.header.mangeServices"/></a></li>
                    <li><a href=""><spring:message code="carWash.admin.header.mangeServiceRequests"/></a></li>
                    <li><a href=""><spring:message code="carWash.admin.header.mangeNews"/></a></li>
                    <li><a href=""><spring:message code="carWash.admin.header.mangeContactInfo"/></a></li>
                    <sec:authorize access="isAuthenticated()">
                        <li><a href="<c:url value="/sigOut"/>"><spring:message code="carWash.admin.header.logOut"/></a>
                        </li>
                    </sec:authorize>
                </ul>
            </div>
        </div>
    </div>
</div>
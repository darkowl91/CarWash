<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="navbar transparent navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="<c:url value="/"/>"> <strong><spring:message code="carWash.welcome.carWash"/></strong>
			</a>
			<div class="nav-collapse collapse">
				<ul class="nav pull-right">
					<li><a href="<c:url value="/"/>" class="active"><spring:message code="carWash.welcome.home"/></a></li>
					<li><a href="<c:url value="/aboutUs"/>"><spring:message code="carWash.welcome.about"/></a></li>
                    <sec:authorize access="hasRole('ROLE_USER')">
                        <li><a href="<c:url value="/viewServiceList"/>"><spring:message code="carWash.welcome.pricing"/></a></li>
                    </sec:authorize>
                    <li><a href="<c:url value="/viewContacts"/>"><spring:message code="carWash.welcome.contactUs"/></a></li>
                    <sec:authorize access="isAnonymous()">
                        <li><a class="btn-header" href="<c:url value="/signUp"/>"><spring:message code="carWash.welcome.signUp"/></a></li>
                        <li><a class="btn-header" href="<c:url value="/signIn"/>"><spring:message code="carWash.welcome.signIn"/></a></li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <li><a href="<c:url value="/manageServiceRequestList?filterId=all"/>"><spring:message code="carWash.welcome.admin"/></a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                    	<li><a href="<c:url value="/selfCare"/>"><spring:message code="carWash.welcome.selfCare"/></a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <li><a href="<c:url value="/sigOut"/>"><spring:message code="carWash.welcome.logOut"/></a></li>
                    </sec:authorize>
                </ul>
			</div>
		</div>
	</div>
</div>

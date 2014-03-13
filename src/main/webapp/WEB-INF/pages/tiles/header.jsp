<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="navbar transparent navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="index.html"> <strong><spring:message code="carWash.welcome.carWash"/></strong>
			</a>
			<div class="nav-collapse collapse">
				<ul class="nav pull-right">
					<li><a href="index.html" class="active"><spring:message code="carWash.welcome.home"/></a></li>
					<li><a href="about-us.html"><spring:message code="carWash.welcome.about"/></a></li>
					<li><a href="pricing.html"><spring:message code="carWash.welcome.pricing"/></a></li>
					<li><a href="contact.html"><spring:message code="carWash.welcome.contactUs"/></a></li>
					<li><a class="btn-header" href="sign-up.html"><spring:message code="carWash.welcome.signUp"/></a></li>
					<li><a class="btn-header" href="sign-in.html"><spring:message code="carWash.welcome.signIn"/></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

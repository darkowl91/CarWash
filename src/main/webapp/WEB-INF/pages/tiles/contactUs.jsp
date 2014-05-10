<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<spring:message code="carWash.contactUs.header" var="contactHeader"/>
<spring:message code="carWash.contactUs.text" var="text"/>
<spring:message code="carWash.contactUs.name" var="enterName"/>
<spring:message code="carWash.contactUs.email" var="enterEmail"/>
<spring:message code="carWash.contactUs.message" var="enterMessage"/>
<spring:message code="carWash.contactUs.submit" var="submit"/>

<div id="contact">
	<div class="container">
		<div class="section_header">
			<h3>${contactHeader}</h3>
		</div>
		<div class="row contact">
			<p>${text}</p>
			
			<c:if test="${not empty message}">
				<div id="alert-success" class="alert alert-success alert-block">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
					${message}
				</div>
			</c:if>
			
			<form:form modelAttribute="contact" method="post">
				<form:errors id="alert-error" cssClass="alert alert-error alert-block" path="*" element="div" />
				<div class="row form">
					<div class="span6 box">
						<form:input path="name" cssClass="name" cssErrorClass="error name" placeholder="${enterName}" />
						<form:input path="email" cssClass="mail" cssErrorClass="error mail" placeholder="${enterEmail}" />
					</div>
					<div class="span6 box box_r">
						<form:textarea path="message" cssErrorClass="error" placeholder="${enterMessage}"  />
					</div>
				</div>

				<div class="row submit">
					<div class="span3 right">
						<input type="submit" value="${submit}" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>
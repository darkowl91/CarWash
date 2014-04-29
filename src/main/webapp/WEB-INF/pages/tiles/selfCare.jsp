<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:message code="carWash.selfCare.username" var="username" />
<spring:message code="carWash.selfCare.firstName" var="firstName" />
<spring:message code="carWash.selfCare.lastName" var="lastName" />
<spring:message code="carWash.selfCare.email" var="email" />

<div id="selfCare">
	<div class="container">
		<div class="span8">
			<h3>
				<spring:message code="carWash.selfCare.personalInformation" />
			</h3>
			<form:form modelAttribute="user" method="post">
				<div id="form-group-username" class="form-group col-lg-4">
					<span class="control-label">${username}:</span> <span
						class="control-label">${user.username}</span>
				</div>
				<div id="form-group-email" class="form-group col-lg-4">
					<span class="control-label">${email}:</span> <span
						class="control-label">${user.email}</span>
				</div>
				<div id="form-group-firstName" class="form-group col-lg-4">
					<label class="control-label" for="firstName">${firstName}:</label>
					<form:input id="firstName" path="firstName" cssClass="form-control" />
					<form:errors path="firstName" cssClass="help-block" />
				</div>
				<div id="form-group-lastName" class="form-group col-lg-4">
					<label class="control-label" for="lastName">${lastName}:</label>
					<form:input id="lastName" path="lastName" cssClass="form-control" />
					<form:errors path="lastName" cssClass="help-block" />
				</div>
				<button type="submit" class="btn btn-primary">
					<spring:message code="carWash.selfCare.submit" />
				</button>
			</form:form>
		</div>
		<div class="span3">
			<div class="user-picture">
				<img height="64" width="64"
					src="data:image/jpeg;base64,${user.picture.imageAsString}" alt=""
					class="media-object">

				<form:form modelAttribute="user" action="/selfCare/uploadPicture"
					enctype="multipart/form-data" method="post">

                    <form:input path="picture" type="file" id="file"
                                required="true"/>
					<form:errors path="picture" cssClass="error" />

                    <form:button type="submit" class="btn btn-primary">
                        <spring:message code="carWash.selfCare.uploadPhoto" />
                    </form:button>
				</form:form>
			</div>
		</div>
	</div>
</div>
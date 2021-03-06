<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="com.wash.model.account.Type"%>
<%@ page import="com.wash.model.account.Operator"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<spring:message code="carWash.selfCare.username" var="username" />
<spring:message code="carWash.selfCare.firstName" var="firstName" />
<spring:message code="carWash.selfCare.lastName" var="lastName" />
<spring:message code="carWash.selfCare.email" var="email" />
<spring:message code="carWash.selfCare.birthday" var="birthday" />

<c:url value="/selfCare/uploadPictire" var="uploadPictireUrl" />

<div id="selfCare">
	<div class="container">
		<div class="row">
			<div class="span12">
				<div id="filters_container">
					<ul id="filters">
						<li>
							<a class="active" href="<c:url value="/selfCare"/>" data-filter=".art">
								<spring:message	code="carWash.selfCare" />
							</a>
						</li>
						<li class="separator">/</li>
						<li>
							<a href="<c:url value="/selfServiceRequests"/>">
								<spring:message code="carWash.selfCare.selfServiceRequests" />
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="span8">
			<h3>
				<spring:message code="carWash.selfCare.personalInformation" />
			</h3>
			<c:url value="/selfCare" var="selfCaseUrl" />
			<form:form modelAttribute="user" action="${selfCaseUrl}"
				method="post" class="form-horizontal">
				<div class="control-group">
					<label for="username" class="control-label"> ${username}: </label>

					<div class="controls">
						<span class="control-label">${user.username}</span>
					</div>
				</div>
				<div class="control-group">
					<label for="email" class="control-label"> ${email}: </label>

					<div class="controls">
						<span class="control-label">${user.email}</span>
					</div>
				</div>
				<div class="control-group">
					<label for="firstName" class="col-sm-2 control-label">
						${firstName}: </label>

					<div class="col-sm-10 controls">
						<form:input id="firstName" path="firstName"
							cssClass="form-control" />
						<form:errors path="firstName" cssClass="help-inline" />
					</div>
				</div>
				<div class="control-group">
					<label for="lastName" class="col-sm-2 control-label">
						${lastName}: </label>

					<div class="col-sm-10 controls">
						<form:input id="lastName" path="lastName" cssClass="form-control" />
						<form:errors path="lastName" cssClass="help-inline" />
					</div>
				</div>
				<div class="control-group">
					<label for="birthday" class="col-sm-2 control-label">
						${birthday}: </label>

					<div class="col-sm-10 controls">
						<form:input id="birthday" type="date" path="birthDay"
							cssClass="form-control" />
						<form:errors path="birthDay" cssClass="help-inline" />
					</div>
				</div>
				<button type="submit" class="btn btn-primary">
					<spring:message code="carWash.selfCare.submit" />
				</button>
			</form:form>

			<h3>
				<spring:message code="carWash.selfCare.phones" />
			</h3>
			<c:if test="${not empty errorMessage}">
				<div id="alert-error" class="alert alert-error alert-block">
					${errorMessage}</div>
			</c:if>
			<c:if test="${empty user.phones}">
				<div id="alert-warning" class="alert alert-warning alert-block">
					<spring:message code="carWash.selfCare.phones.isEmpty" />
				</div>
			</c:if>
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#modal-container-addPhone">
				<spring:message code="carWash.selfCare.addPhone" />
			</button>
			<div class="clearfix"></div>
			<c:if test="${not empty user.phones}">
				<table class="table">
					<thead>
						<tr>
							<th><spring:message code="carWash.selfCare.phone.phoneValue" /></th>
							<th><spring:message code="carWash.selfCare.phone.operator" /></th>
							<th><spring:message code="carWash.selfCare.phone.type" /></th>
							<th>#</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="phone" items="${user.phones}">
							<tr>
								<td>${phone.phoneValue}</td>
								<td>${phone.operator}</td>
								<td>${phone.type}</td>
								<td><a class="active"
									href="<c:url value="/selfCare/deletePhone/${phone.id}"/>"><i
										class="icon-remove"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
		</div>
		<div class="span3">
			<div class="user-picture">
				<c:if test="${fn:length(user.picture.picture) > 0}">
					<img height="64" width="64"
						src="data:image/jpeg;base64,${user.picture.imageAsString}"
						alt="${user.picture.pictureName}">
				</c:if>
				<c:if test="${fn:length(user.picture.picture) == 0}">
					<img height="64" width="64"
						src="<c:url value="/resources/img/default.jpg" />" alt="default">
				</c:if>
				<c:url value="/selfCare/uploadPicture" var="uploadPictureUrl" />
				<form:form modelAttribute="user" action="${uploadPictureUrl}"
					enctype="multipart/form-data" method="post">

					<div>
						<form:input path="picture" type="file" id="file"
							title="Search for a file to add" />
					</div>
					<form:errors path="picture.*" cssClass="error" />

					<div>
						<form:button type="submit" class="btn btn-primary">
							<spring:message code="carWash.selfCare.uploadPhoto" />
						</form:button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modal-container-addPhone" aria-hidden="true"
	tabindex="-1" style="display: none;" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">×</button>
				<h4 class="modal-title" id="myModalLabel">
					<spring:message code="carWash.selfCare.addPhone" />
				</h4>
			</div>
			<div class="modal-body">
				<c:url value="/selfCare/addPhone" var="addPhoneUrl" />
				<form:form method="post" action="${addPhoneUrl}"
					modelAttribute="newPhone" class="form-horizontal" role="form">

					<spring:message code="carWash.selfCare.phone.phoneValue"
						var="phoneValue" />
					<div class="control-group">
						<label for="phoneValue" class="col-sm-2 control-label">
							${phoneValue}: </label>

						<div class="col-sm-10 controls">
							<form:input path="phoneValue" type="text" id="phoneValue"
								required="true" placeholder="${phoneValue}" />
							<form:errors path="phoneValue" cssClass="help-inline" />
						</div>
					</div>
					<br />

					<c:set var="operators" value="<%=Operator.values()%>" />
					<spring:message code="carWash.selfCare.phone.operator"
						var="operator" />
					<div class="control-group">
						<label for="operator" class="col-sm-2 control-label">
							${operator}: </label>

						<div class="col-sm-10 controls">
							<form:select path="operator">
								<c:forEach var="item" items="${operators}">
									<form:option value="${item.value}">
										${item.value}
									</form:option>
								</c:forEach>
							</form:select>
							<form:errors path="operator" cssClass="help-inline" />
						</div>
					</div>
					<br />

					<c:set var="types" value="<%=Type.values()%>" />
					<spring:message code="carWash.selfCare.phone.type" var="phoneType" />
					<div class="control-group">
						<label for="phoneType" class="col-sm-2 control-label">
							${phoneType}: </label>

						<div class="col-sm-10 controls">
							<form:select path="type">
								<c:forEach var="item" items="${types}">
									<form:option value="${item.value}">
										${item.value}
									</form:option>
								</c:forEach>
							</form:select>
							<form:errors path="type" cssClass="help-inline" />
						</div>
					</div>
					<br />

					<button type="submit" class="btn btn-primary">
						<spring:message code="carWash.selfCare.addPhone" />
					</button>
				</form:form>
			</div>
		</div>
	</div>
</div>

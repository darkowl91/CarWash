<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.wash.model.account.Type"%>
<%@ page import="com.wash.model.account.Operator"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:message code="carWash.selfCare.username" var="username" />
<spring:message code="carWash.selfCare.firstName" var="firstName" />
<spring:message code="carWash.selfCare.lastName" var="lastName" />
<spring:message code="carWash.selfCare.email" var="email" />

<c:url value="/selfCare/uploadPictire" var="uploadPictireUrl" />

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
				<button type="submit" class="btn btn-default">
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
			<button class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#modal-container-addPhone">
				<spring:message	code="carWash.selfCare.addPhone" />
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
			<c:if test="${empty user.phones}">
				<spring:message code="carWash.selfCare.phones.isEmpty" />
			</c:if>
		</div>
		<div class="span3">
			<div class="user-picture">
				<img height="64" width="64"
					src="data:image/jpeg;base64,${user.picture.imageAsString}" alt=""
					class="media-object">
				<form:form modelAttribute="uploadedPicture"
					action="${uploadPicture}" enctype="multipart/form-data">
					<input type="file" name="file" />
					<form:errors path="file" cssClass="error" />
					<button type="submit">
						<spring:message code="carWash.selfCare.uploadPhoto" />
					</button>
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
				<form:form method="post" action="selfCare/addPhone"
					modelAttribute="newPhone" class="form-horizontal" role="form">

					<spring:message code="carWash.selfCare.phone.value"
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
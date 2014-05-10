<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:message code="carWash.signUp.username" var="username" />
<spring:message code="carWash.signUp.password" var="password" />
<spring:message code="carWash.signUp.passwordConfirm"
	var="passwordConfirm" />
<spring:message code="carWash.signUp.firstName" var="firstName" />
<spring:message code="carWash.signUp.lastName" var="lastName" />
<spring:message code="carWash.signUp.email" var="email" />

<div id="sign_up1">
	<div class="container">
		<div class="row">
			<div class="span12 header">
				<h4>
					<spring:message code="carWash.signUp.signUp" />
				</h4>
				<p>
					<spring:message code="carWash.signUp.welcome" />
				</p>
			</div>

			<form:form modelAttribute="newUser" method="post" cssClass="dosnt">
				<form:errors id="alert-error"
					cssClass="alert alert-error alert-block span12" path="*"
					element="div" />
				<div class="span4">
					<div id="form-group-username" class="form-group col-lg-4">
						<form:input id="username" path="username" cssClass="form-control"
							cssErrorClass="error form-control" placeholder="${username}" />
					</div>
					<div id="form-group-email" class="form-group col-lg-4">
						<form:input id="email" path="email" cssClass="form-control"
							cssErrorClass="error form-control" placeholder="${email}" />
					</div>
				</div>
				<div class="span4">
					<div id="form-group-first-name" class="form-group col-lg-3">
						<form:input id="first-name" path="firstName"
							cssClass="form-control" cssErrorClass="error form-control"
							placeholder="${firstName}" />
					</div>
					<div id="form-group-last-name" class="form-group col-lg-4">
						<form:input id="last-name" path="lastName" cssClass="form-control"
							cssErrorClass="error form-control" placeholder="${lastName}" />
					</div>
				</div>
				<div class="span4">
					<div id="form-group-password" class="form-group col-lg-4">
						<form:password id="password" path="password"
							cssClass="form-control" cssErrorClass="error form-control"
							placeholder="${password}" />
					</div>
					<div id="form-group-password-confirm" class="form-group col-lg-4">
						<form:password id="password-confirm" path="passwordConfirm"
							cssClass="form-control" cssErrorClass="error form-control"
							placeholder="${passwordConfirm}" />
					</div>
				</div>

				<div class="span12 dosnt">
					<button type="submit" class="btn btn-default">
						<spring:message code="carWash.signUp.submit" />
					</button>
				</div>
			</form:form>

			<div class="clearfix"></div>

			<div class="span12 dosnt">
				<span><spring:message code="carWash.signUp.account" /></span> <a
					href="<c:url value="/signIn"/>"><spring:message
						code="carWash.signUp.signIn" /></a>
			</div>
		</div>
	</div>
</div>
<div id="sign_up2">
	<div class="container">
		<div class="section_header">
			<h3>
				<span>Наши контакты</span>
			</h3>
		</div>
		<div class="row login">
			<div class="span5 left_box">
				<h5>Телефоны</h5>

				<div class="perk_box">
					<div class="perk">
						<p>
							<strong>Городской:</strong> (017) 279-77-92
						</p>
					</div>
					<div class="perk">
						<p>
							<strong>Velcom:</strong> 8 044 715-05-05
						</p>
					</div>
					<div class="perk">
						<p>
							<strong>MTC:</strong> 8 033 661-97-47
						</p>
					</div>
					<div class="perk">
						<p>
							<strong>Email:</strong> upiter-avto@open.by
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
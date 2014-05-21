<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="selfCare">
	<div class="container">
		<div class="row">
			<div class="span12">
				<div id="filters_container">
					<ul id="filters">
						<li><a href="<c:url value="/selfCare"/>" data-filter=".art">
								<spring:message code="carWash.selfCare" />
						</a></li>
						<li class="separator">/</li>
						<li><a class="active"
							href="<c:url value="/selfServiceRequests"/>"> <spring:message
									code="carWash.selfCare.selfServiceRequests" />
						</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<c:if test="${empty requests}">
					<div id="alert-warning" class="alert alert-warning alert-block">
						<spring:message code="carWash.selfServiceRequest.isEmpty" />
					</div>
				</c:if>
				<c:if test="${not empty requests}">
					<div id="gallery_container">
						<table class="table">
							<thead>
								<tr>
									<th><spring:message code="carWash.selfServiceRequest.date" />
									</th>

									<th><spring:message code="carWash.selfServiceRequest.info" />
									</th>

									<th><spring:message
											code="carWash.selfServiceRequest.price" /></th>

									<th>#</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="request" items="${requests}">
									<tr>
										<td><f:formatDate type="both" dateStyle="full"
												value="${request.date.time}" /></td>
										<td>${request.service.name}${request.service.warranty}
											${request.service.description}</td>
										<td>${request.service.price}</td>
										<td><a class="active"
											href="<c:url value="/removeSelfServiceRequest?id=${request.id}"/>">
												<i class="icon-remove"></i>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</div>

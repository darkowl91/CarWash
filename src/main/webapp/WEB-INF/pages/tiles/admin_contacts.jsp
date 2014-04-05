<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url var="firstUrl" value="/manageContact/1" />
<c:url var="lastUrl" value="/manageContact/${page.totalPages}" />
<c:url var="prevUrl" value="/manageContact/${currentIndex - 1}" />
<c:url var="nextUrl" value="/manageContact/${currentIndex + 1}" />

<div id="portfolio">
	<div class="container">
		<div class="section_header">
			<h3>
				<spring:message code="carWash.admin.contacts.messages" />
			</h3>
		</div>
		<div class="row">
			<div class="span12">
				<div class="pagination pagination-centered">
					<ul>
						<c:choose>
							<c:when test="${currentIndex == 1}">
								<li class="disabled"><a href="#">&lt;&lt;</a></li>
								<li class="disabled"><a href="#">&lt;</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${firstUrl}">&lt;&lt;</a></li>
								<li><a href="${prevUrl}">&lt;</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${beginIndex}" end="${endIndex}">
							<c:url var="pageUrl" value="/manageContact/${i}" />
							<c:choose>
								<c:when test="${i == currentIndex}">
									<li class="active"><a href="${pageUrl}"><c:out
												value="${i}" /></a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${currentIndex == page.totalPages}">
								<li class="disabled"><a href="#">&gt;</a></li>
								<li class="disabled"><a href="#">&gt;&gt;</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${nextUrl}">&gt;</a></li>
								<li><a href="${lastUrl}">&gt;&gt;</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<br />
				<div id="gallery_container">
					<c:if test="${not empty page.content}">
						<table class="table">
							<thead>
								<tr>
									<th>Date</th>
									<th>Name</th>
									<th>Email</th>
									<th>Message</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="contact" items="${page.content}">
									<tr>
										<td>${contact.date.time}</td>
										<td>${contact.name}</td>
										<td>${contact.email}</td>
										<td>${contact.message}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>

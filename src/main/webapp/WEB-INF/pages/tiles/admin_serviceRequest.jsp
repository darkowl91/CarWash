<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="portfolio">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.admin.serviceRequest.requests"/></h3>
        </div>
        <div class="row">
            <div class="span12">
                <div id="filters_container">
                    <ul id="filters">
                        <c:if test="${filterId == 'all'}">
                            <c:set var="classAll" value="active" scope="page"/>
                        </c:if>
                        <c:if test="${filterId == 'toApprove'}">
                            <c:set var="classToApprove" value="active" scope="page"/>
                        </c:if>
                        <c:if test="${filterId == 'approved'}">
                            <c:set var="classApproved" value="active" scope="page"/>
                        </c:if>
                        <li>
                            <a class="${classAll}" href="<c:url value="/manageServiceRequestList?filterId=all"/>">
                                <spring:message code="carWash.admin.serviceRequest.all"/>
                            </a>
                        </li>
                        <li class="separator">/</li>
                        <li>
                            <a class="${classToApprove}"
                               href="<c:url value="/manageServiceRequestList?filterId=toApprove"/>">
                                <spring:message code="carWash.admin.serviceRequest.toApprove"/>
                            </a>
                        </li>
                        <li class="separator">/</li>
                        <li>
                            <a class="${classApproved}"
                               href="<c:url value="/manageServiceRequestList?filterId=approved"/>">
                                <spring:message code="carWash.admin.serviceRequest.approved"/>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <div id="gallery_container">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>
                                    <spring:message code="carWash.admin.serviceRequest.user"/>
                                </th>

                                <th>
                                    <spring:message code="carWash.admin.serviceRequest.date"/>
                                </th>

                                <th>
                                    <spring:message code="carWash.admin.serviceRequest.info"/>
                                </th>

                                <th>
                                    <spring:message code="carWash.admin.serviceRequest.price"/>
                                </th>

                                <th>
                                    #
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="request" items="${SERVICE_REQUEST}">
                                <tr>
                                    <td>
                                        <a class="link" href="#modal-container_${request.id}" data-toggle="modal"
                                           data-target="#modal-container_${request.id}">
                                        ${request.user.firstName} ${request.user.lastName}
                                        </a>
                                    </td>
                                    <td>
                                      <f:formatDate type="both" dateStyle="full" value="${request.date.time}"/>
                                    </td>
                                    <td>
                                      ${request.service.name} ${request.service.warranty} ${request.service.description}
                                    </td>
                                    <td>
                                      ${request.service.price}
                                    </td>
                                    <td>
                                        <a class="active" href="<c:url value="/removeServiceRequest?id=${request.id}&filterId=${filterId}"/>">
                                            <i class="icon-remove"></i>
                                        </a>
                                        <c:if test="${filterId == 'toApprove'}">
                                            <a class="active" href="<c:url value="/approveServiceRequest?id=${request.id}"/>">
                                            <i class="icon-ok"></i>
                                            </a>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                </div>
            </div>
        </div>
    </div>
</div>

<c:forEach var="request" items="${SERVICE_REQUEST}">

<div class="modal fade" id="modal-container_${request.id}" aria-hidden="true" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                        ${request.user.username}
                </h4>
            </div>
            <div class="modal-body">
                <div class="media">
                    <a href="#" class="pull-left">
                        <img height="64" width="64" src="data:image/jpeg;base64,${request.user.picture.imageAsString}" alt="" class="media-object">
                    </a>
                    <div class="media-body" contenteditable="false">
                        <h4 class="media-heading"> ${request.user.firstName} ${request.user.lastName}</h4>
                         <table class="table">
                             <tr>
                                 <td>
                                    <spring:message code="carWash.admin.serviceRequest.registrationDate"/>:
                                 </td>
                                 <td>
                                    <f:formatDate type="both" dateStyle="full" value="${request.user.registrationDate.time}"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <spring:message code="carWash.admin.serviceRequest.birthDay"/>:
                                 </td>
                                 <td>
                                     <f:formatDate type="both" dateStyle="full" value="${request.user.birthDay.time}"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <spring:message code="carWash.admin.serviceRequest.email"/>:
                                 </td>
                                 <td>
                                    ${request.user.email}
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <spring:message code="carWash.admin.serviceRequest.phone"/>:
                                 </td>
                                 <td>
                                    <c:forEach var="phone" items="${request.user.phones}">
                                         ${phone.operator} ${phone.phoneValue} ${phone.type}
                                     </c:forEach>
                                 </td>
                             </tr>

                         </table>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="carWash.admin.serviceRequest.close"/></button>
            </div>
        </div>
    </div>
    </div>
</c:forEach>
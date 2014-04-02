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
                        <li><a id="all" href="<c:url value="/manageServiceRequestList?filterId=all"/>"><spring:message code="carWash.admin.serviceRequest.all"/></a></li>
                        <li class="separator">/</li>
                        <li><a id="toApprove" href="<c:url value="/manageServiceRequestList?filterId=toApprove"/>"><spring:message code="carWash.admin.serviceRequest.toApprove"/></a></li>
                        <li class="separator">/</li>
                        <li><a id="approved" href="<c:url value="/manageServiceRequestList?filterId=approved"/>"><spring:message code="carWash.admin.serviceRequest.approved"/></a></li>
                    </ul>
                    <script>
                        $(document).ready(function () {
                        	alert('test');
                            var element = '#' + '${filterId}';
                            $(element).addClass("active");
                        });
                    </script>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <div id="gallery_container">

                    <%--TODO: Shhould be list with service requests--%>
                    <%--There are can be 3 variants:--%>
                    <%--- all--%>
                    <%--- to approve by manager--%>
                    <%--- already approved by manager--%>

                   <%--Administrator can approve or delete requests--%>


                   <%--Table contains:--%>
                        <%--user First/Last name--%>
                        <%--date--%>
                        <%--request info--%>
                        <%--request prise--%>
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
                                            ${request.user.firstName} ${request.user.lastName}
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
                                        <a class="active" href="<c:url value="/removeServiceRequest?id=${request.id}"/>">
                                            <i class="icon-remove"></i>
                                        </a>

                                            <%--<a class="active" href="<c:url value="/approveServiceRequest?id=${request.id}"/>">--%>
                                            <%--<i class="icon-ok"></i>--%>
                                            <%--</a>--%>

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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="portfolio">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.admin.serviceRequest.requests"/></h3>
        </div>
        <div class="row">
            <div class="span12">
                <div id="filters_container">
                    <ul id="filters">
                        <li><a href="#" data-filter="*" class="active"><spring:message code="carWash.admin.serviceRequest.all"/></a></li>
                        <li class="separator">/</li>
                        <li><a href="#" data-filter=".art"><spring:message code="carWash.admin.serviceRequest.toApprove"/></a></li>
                        <li class="separator">/</li>
                        <li><a href="#" data-filter=".ilustration"><spring:message code="carWash.admin.serviceRequest.approved"/></a></li>
                    </ul>
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

                </div>
            </div>
        </div>
    </div>
</div>

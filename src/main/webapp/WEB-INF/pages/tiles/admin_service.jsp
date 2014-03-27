<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="portfolio">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.admin.service.servise"/></h3>
        </div>
        <div class="row">
            <div class="span12">
                <div id="filters_container">
                    <ul id="filters">
                        <li><a href="#" data-filter=".art"><spring:message code="carWash.admin.service.view"/></a></li>
                        <li class="separator">/</li>
                        <li><a href="#" data-filter="*" class="active"><spring:message code="carWash.admin.service.create"/></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <div id="gallery_container">

                    <%--TODO: Shhould be list with services already existing--%>

                    <%--Administrator can edit, create or delete service--%>


                </div>
            </div>
        </div>
    </div>
</div>

<%--TODO: create popUp form with fileds for creation new servise--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div id="portfolio">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.admin.service.service"/></h3>
        </div>
        <div class="row">
            <div class="span12">
                <div id="filters_container">
                    <ul id="filters">
                        <li>
                            <a class="active" href="#" data-filter=".art">
                                <spring:message code="carWash.admin.service.view"/>
                            </a>
                        </li>
                        <li class="separator">/</li>
                        <li>
                            <a href="#modal-container-createService" data-toggle="modal"
                               data-target="#modal-container-createService">
                                <spring:message code="carWash.admin.service.create"/>
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
                                <spring:message code="carWash.admin.service.name"/>
                            </th>

                            <th>
                                <spring:message code="carWash.admin.service.warranty"/>
                            </th>

                            <th>
                                <spring:message code="carWash.admin.service.price"/>
                            </th>

                            <th>
                                <spring:message code="carWash.admin.service.description"/>
                            </th>

                            <th>
                                #
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="service" items="${SERVICES}">
                            <tr>
                                <td>
                                        ${service.name}
                                </td>
                                <td>
                                        ${service.warranty}
                                </td>
                                <td>
                                        ${service.price}
                                </td>
                                <td>
                                        ${service.description}
                                </td>
                                <td>
                                    <a class="active" href="<c:url value="/removeService?id=${service.id}"/>"><i
                                            class="icon-remove"></i></a>
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

<%--CREATE SERVICE MODAL --%>
<div class="modal fade" id="modal-container-createService" aria-hidden="true" tabindex="-1" style="display: none;" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                    <spring:message code="carWash.admin.service.new"/>
                </h4>
            </div>
            <div class="modal-body">
                <form:form method="post" action="createService" modelAttribute="newService"
                           class="form-horizontal" role="form">

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">
                            <spring:message code="carWash.admin.service.name"/>:
                        </label>

                        <spring:message code="carWash.admin.service.nameEnter" var="nameEnter"/>

                        <div class="col-sm-10">
                        <form:input path="name" id="name" type="text" class="form-control"
                                    required="true"
                                    placeholder="${nameEnter}"/>
                        </div>
                    </div>
                    <br/>
                    <div class="form-group">
                        <label for="warranty" class="col-sm-2 control-label">
                            <spring:message code="carWash.admin.service.warranty"/>:
                        </label>

                        <spring:message code="carWash.admin.service.warrantyEnter" var="warrantyEnter"/>

                        <div class="col-sm-10">
                        <form:input path="warranty" type="number" class="form-control" id="warranty" max="3" min="1"
                                    required="true"
                                    placeholder="${warrantyEnter}"/>
                        </div>
                    </div>
                    <br/>
                    <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">
                            <spring:message code="carWash.admin.service.price"/>:
                        </label>

                        <spring:message code="carWash.admin.service.priceEnter" var="priceEnter"/>

                        <div class="col-sm-10">
                        <form:input path="price" type="number" class="form-control" id="price" max="999999" min="1"
                                    required="true"
                                    placeholder="${priceEnter}"/>
                        </div>
                    </div>
                    <br/>
                    <div class="form-group">
                        <label for="description" class="col-sm-2 control-label">
                            <spring:message code="carWash.admin.service.description"/>:
                        </label>
                        <spring:message code="carWash.admin.service.descriptionEnter" var="descriptionEnter"/>
                        <div class="col-sm-10">
                        <form:textarea path="description" id="description" class="form-control" rows="3"
                                       placeholder="${descriptionEnter}"/>
                        </div>
                    </div>
                    <br/>
                    <button type="submit" class="btn btn-primary">
                        <spring:message code="carWash.admin.service.done"/>
                    </button>
                    <button type="reset" class="btn btn-default">
                    <spring:message code="carWash.admin.service.clear"/>
                    </button>
                </form:form>
            </div>
        </div>
    </div>
</div>

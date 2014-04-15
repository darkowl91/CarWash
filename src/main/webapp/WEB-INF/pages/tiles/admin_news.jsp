<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<div id="portfolio">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.admin.news.news"/></h3>
        </div>
        <div class="row">
            <div class="span12">
                <div id="filters_container">
                    <ul id="filters">
                        <li><a href="#" data-filter=".art" class="active"><spring:message
                                code="carWash.admin.news.view"/></a></li>
                        <li class="separator">/</li>
                        <li>
                            <a class="link" href="#modal-container_NEWS" data-toggle="modal"
                               data-target="#modal-container_NEWS">
                                <spring:message code="carWash.admin.news.add"/>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <div id="gallery_container">

                    <%--TODO: Shhould be list with news already existing--%>
                    <table class="table">
                        <thead>
                        <tr>
                            <%--<th>--%>
                                <%--<spring:message code="carWash.admin.news"/>--%>
                            <%--</th>--%>

                            <%--<th>--%>
                                <%--<spring:message code="carWash.admin.news"/>--%>
                            <%--</th>--%>

                            <%--<th>--%>
                                <%--<spring:message code="carWash.admin.news"/>--%>
                            <%--</th>--%>

                            <%--<th>--%>
                                <%--<spring:message code="carWash.admin.news"/>--%>
                            <%--</th>--%>

                            <%--<th>--%>
                                <%--#--%>
                            <%--</th>--%>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="newsItem" items="${NEWS}">
                            <tr>
                                <td>

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

<div class="modal fade" id="modal-container_NEWS" aria-hidden="true" tabindex="-1" style="display: none;"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                    Add news
                </h4>
            </div>
            <div class="modal-body">
                <div class="media">
                    <div class="media-body" contenteditable="false">
                        <form:form method="post" action="createNews" modelAttribute="newNews" enctype="multipart/form-data"
                                  cssClass="form-horizontal" role="form">

                            <div class="form-group">
                                <label for="date" class="col-sm-2 control-label">
                                    <spring:message code="carWash.admin.news.date"/>:
                                </label>
                                <spring:message code="carWash.admin.news.date.enter" var="dateEnter"/>

                                <div class="col-sm-10">
                                    <form:input path="date" id="date" type="date" cssClass="form-control"
                                                required="true"
                                                placeholder="${dateEnter}"/>
                                </div>
                            </div>
                            <br/>

                            <div class="form-group">
                                <label for="title" class="col-sm-2 control-label">
                                    <spring:message code="carWash.admin.news.title"/>:
                                </label>

                                <spring:message code="carWash.admin.news.title.enter" var="titleEnter"/>

                                <div class="col-sm-10">
                                    <form:input path="title" type="text" cssClass="form-control" id="title"
                                                required="true"
                                                placeholder="${titleEnter}"/>
                                </div>
                            </div>
                            <br/>

                            <div class="form-group">
                                <label for="description" class="col-sm-2 control-label">
                                    <spring:message code="carWash.admin.news.description"/>:
                                </label>

                                <spring:message code="carWash.admin.news.description.enter" var="decriptionEnter"/>

                                <div class="col-sm-10">
                                    <form:input path="description" type="text" cssClass="form-control" id="description"
                                                required="true"
                                                placeholder="${decriptionEnter}"/>
                                </div>
                            </div>
                            <br/>

                            <div class="form-group">
                                <label for="content" class="col-sm-2 control-label">
                                    <spring:message code="carWash.admin.news.content"/>:
                                </label>
                                <spring:message code="carWash.admin.news.content.enter" var="contentEnter"/>
                                <div class="col-sm-10">
                                    <form:textarea path="content" id="content" cssClass="form-control" rows="3"
                                                   required="true"
                                                   placeholder="${contentEnter}"/>
                                </div>
                            </div>
                            <br/>

                            <div class="form-group">
                                <spring:message code="carWash.admin.news.file" var="fileEnter"/>
                                <div class="col-sm-10">
                                    <form:input path="picture" type="file" id="file"
                                                required="true"
                                                cssClass="form-control"
                                                placeholder="${fileEnter}"/>
                                </div>
                            </div>
                            <br/>
                            <button type="submit" class="btn btn-primary">
                                <spring:message code="carWash.admin.news.add"/>
                            </button>
                            <button type="reset" class="btn btn-default">
                                <spring:message code="carWash.admin.news.clear"/>
                            </button>
                        </form:form>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" value="close">Close</button>
            </div>
        </div>
    </div>
</div>

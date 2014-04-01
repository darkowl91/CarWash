<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div id="portfolio">
    <div class="container">
        <div class="section_header">
            <h3><spring:message code="carWash.admin.news.news"/></h3>
        </div>
        <div class="row">
            <div class="span12">
                <div id="filters_container">
                    <ul id="filters">
                        <li><a href="#" data-filter=".art" class="active"><spring:message code="carWash.admin.news.view"/></a></li>
                        <li class="separator">/</li>
                        <li><a href="#" data-filter="*"><spring:message code="carWash.admin.news.add"/></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span12">
                <div id="gallery_container">

                    <%--TODO: Shhould be list with news already existing--%>

                    <%--Administrator can edit, create or delete news--%>


                </div>
            </div>
        </div>
    </div>
</div>

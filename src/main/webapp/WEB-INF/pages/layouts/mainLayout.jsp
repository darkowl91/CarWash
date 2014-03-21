<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <%--CSS--%>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap-responsive.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap-overrides.css"/>" rel="stylesheet"/>
    <!-- Add custom CSS here -->
    <link href="<c:url value="/resources/css/theme.css/"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/lib/animate.css"/>" rel="stylesheet" type="text/css" media="screen, projection"/>
    <!-- Page Specific CSS -->
    <link href="<tiles:getAsString name="page_specific_css" ignore="true"/>" rel="stylesheet" type="text/css" media="screen"/>
    <!--[if lt IE 9]>
    <script src="<c:url value="/resources/js/html5.js"/>"></script>
    <![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body class="pull_top">
	<tiles:insertAttribute name="header"/>

    <tiles:insertAttribute name="content"/>

	<tiles:insertAttribute name="footer"/>
<!-- Scripts -->
<script src="<c:url value="/resources/js/jquery-latest.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/theme.js"/>"></script>
<!-- Page Specific Scripts -->
<script type="text/javascript" src="<tiles:getAsString name="page_specific_js" ignore="true"/>"></script>
</body>
</html>
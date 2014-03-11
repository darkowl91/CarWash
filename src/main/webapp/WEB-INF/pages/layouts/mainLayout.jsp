<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <%--CSS--%>
    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/WEB-INF/css/bootstrap.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/WEB-INF/css/bootstrap-responsive.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/WEB-INF/css/bootstrap-overrides.css"/>" rel="stylesheet"/>
    <!-- Add custom CSS here -->
    <link href="<c:url value="/WEB-INF/css/theme.css/"/>" rel="stylesheet" type="text/css"/>
    <!-- Page Specific CSS -->
    <%--TODO: move it to specific page (dunamicly add css for page)--%>
    <link href="<c:url value="/WEB-INF/css/index.css"/>" rel="stylesheet" type="text/css" media="screen"/>
    <!--[if lt IE 9]>
    <script src="/WEB-INF/js/html5.js"></script>
    <![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>


<!-- Scripts -->
<script src="<c:url value="/WEB-INF/js/jquery-latest.js"/>"></script>
<script src="<c:url value="/WEB-INF/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/WEB-INF/js/theme.js"/>"></script>
<!-- Page Specific Scripts -->
<%--TODO: move it to specific page (dunamicly add js for page)--%>
<script type="text/javascript" src="<c:url value="/WEB-INF/js/index-slider.js"/>"></script>
</body>
</html>
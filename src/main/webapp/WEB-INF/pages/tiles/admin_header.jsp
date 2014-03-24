<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="navbar navbar-inverse navbar-static-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="index.html">
                <strong>CLEAN CANVAS</strong>
            </a>

            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="about-us.html">ABOUT US</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            PAGES
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="features.html">Features</a></li>
                            <li><a href="services.html">Services</a></li>
                        </ul>
                    </li>
                    <li><a class="btn-header" href="sign-in.html">Sign in</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
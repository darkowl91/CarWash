<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<footer id="footer" >
    <div class="container">
        <div class="row info">
            <div class="span6 residence">
                <ul>
                    <li>2301 East Lamar Blvd. Suite 140. City, Arlington.</li>
                    <li>United States, Zip Code TX 76006.</li>
                </ul>
            </div>
            <div class="span5 touch">
                <ul>
                    <li><strong>P.</strong> 1 817 274 2933</li>
                    <li><strong>E.</strong><a href="#"> bootstrap@twitter.com</a></li>
                </ul>
            </div>
        </div>
        <div class="row credits">
            <div class="span12">
                <div class="row copyright">
                    <div class="span12">
                        <spring:message code="carWash.admin.footer.copyright"/>
                    </div>
                </div>
            </div>
        </div>
</footer>
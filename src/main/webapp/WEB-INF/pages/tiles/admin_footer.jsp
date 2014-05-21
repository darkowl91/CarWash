<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<footer id="footer">
    <div class="container">
        <div class="row info">
            <div class="span6 residence">
                <ul>
                    <li>
                        <script>
                                var dNow = new Date();
                                var localDate = (dNow.getMonth() + 1) + '/' + dNow.getDate() + '/' + dNow.getFullYear() + ' ' + dNow.getHours() + ':' + dNow.getMinutes();
                                document.write(localDate);
                        </script>
                    </li>
                    <li></li>
                </ul>
            </div>
            <div class="span5 touch">
                <ul>
                    <li>
                        <strong>
                            <spring:message code="carWash.admin.footer.username"/>:
                        </strong>
                        <security:authentication property="principal.username"/></li>
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
    </div>
</footer>
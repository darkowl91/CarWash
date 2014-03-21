<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="sign_up1">
    <div class="container">
        <div class="row">
            <div class="span12 header">
                <h4><spring:message code="carWash.signUp.signUp"/></h4>

                <p>
                    <spring:message code="carWash.signUp.welcome"/>
                </p>
            </div>
            <div class="span12 footer">
                <form>
                    <input type="text" placeholder="<spring:message code="carWash.signUp.username"/>"/>
                    <input type="password" placeholder="<spring:message code="carWash.signUp.password"/>"/>
                    <input type="password" placeholder="<spring:message code="carWash.signUp.passwordConfirm"/>"/>
                    <input type="submit" value="<spring:message code="carWash.signUp.submit"/>"/>
                </form>
            </div>

            <div class="span12 dosnt">
                <span><spring:message code="carWash.signUp.account"/></span>
                <a href="<c:url value="/signIn"/>"><spring:message code="carWash.signUp.signIn"/></a>
            </div>
        </div>
    </div>
</div>

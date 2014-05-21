<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="sign_in1">
    <div class="container">
        <div class="row">
            <div class="span12 header">
                <h4><spring:message code="carWash.signIn.signIn"/></h4>
                <p>
                   <spring:message code="carWash.signIn.welcome"/>
                    </p>
            </div>
            <div class="span12 footer">
                <form action="<c:url value='/j_spring_security_check'/>" method='POST'>
                	<input name="j_username" type="text" placeholder="<spring:message code="carWash.signIn.username"/>"/>
                	<input name="j_password" type="password" placeholder="<spring:message code="carWash.signIn.password"/>"/>
                	<input type="submit" placeholder="Confirm Password" value="<spring:message code="carWash.signIn.submit"/>"/>
                </form>
            </div>

            <div class="span12 proof">
                <div class="span5 remember">
                    <label class="checkbox">
                        <input name="_spring_security_remember_me" type="checkbox"/><spring:message code="carWash.signIn.rememberMe"/>
                    </label>
                </div>
                <div class="span3 dosnt">
                    <span> <spring:message code="carWash.signIn.account"/></span>
                    <a href="<c:url value="/signUp"/>"><spring:message code="carWash.signIn.signUp"/></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="sign_up2">
    <div class="container">
        <div class="section_header">
            <h3><span>Наши контакты</span></h3>
        </div>
        <div class="row login">
            <div class="span5 left_box">
                <h4>Телефоны</h4>

                <div class="perk_box">
                    <div class="perk">
                        <p><strong>Городской:</strong> (017) 279-77-92</p>
                    </div>
                    <div class="perk">
                        <p><strong>Velcom:</strong> 8 044 715-05-05</p>
                    </div>
                    <div class="perk">
                        <p><strong>MTC:</strong> 8 033 661-97-47</p>
                    </div>
                    <div class="perk">
                        <p><strong>Email:</strong> upiter-avto@open.by</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
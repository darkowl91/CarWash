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
                <form action="<c:url value=''/>" method='POST'>
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
<div id="sign_up2">
    <div class="container">
        <div class="section_header">
            <h3><span>Наши контакты</span></h3>
        </div>
        <div class="row login">
            <div class="span5 left_box">
                <h5>Телефоны</h5>

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
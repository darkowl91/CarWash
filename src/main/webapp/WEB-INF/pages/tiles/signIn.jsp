<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <h3>Sign up <span>(option 2)</span></h3>
        </div>
        <div class="row login">
            <div class="span5 left_box">
                <h4>Create your account</h4>

                <div class="perk_box">
                    <div class="perk">
                        <span class="icos ico1"></span>

                        <p><strong>Lorem alteration</strong> in some form injected humour these randomised words .</p>
                    </div>
                    <div class="perk">
                        <span class="icos ico2"></span>

                        <p><strong>There are many variations</strong> of passages of Lorem alteration in some form
                            injected humour these randomised words.</p>
                    </div>
                    <div class="perk">
                        <span class="icos ico3"></span>

                        <p><strong>Alteration in some form</strong> injected humour these randomised words.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
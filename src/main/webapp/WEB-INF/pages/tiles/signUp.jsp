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
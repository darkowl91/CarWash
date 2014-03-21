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
                <input type="text" placeholder="<spring:message code="carWash.signUp.username"/>" />
                <input type="password" placeholder="<spring:message code="carWash.signUp.password"/>" />
                <input type="password" placeholder="<spring:message code="carWash.signUp.passwordConfirm"/>" />
                <input type="submit" value="<spring:message code="carWash.signUp.submit"/>"/>
                </form>
            </div>

            <div class="span12 dosnt">
                <span><spring:message code="carWash.signUp.account"/></span>
                <a href="<c:url value="/signIn"/>"><spring:message code="carWash.signUp.signIn"/></a>
            </div>
        </div>
    </div>
    <div id="showcase">
        <div class="container">
            <div class="section_header">
                <h3>Our Services</h3>
            </div>
            <div class="row feature_wrapper">
                <!-- Features Row -->
                <div class="features_op1_row">
                    <!-- Feature -->
                    <div class="span4 feature first">
                        <div class="img_box">
                            <a href="services.html">
                                <img src="<c:url value="/resources/img/service1.png"/>"/>
                                <span class="circle">
                                    <span class="plus">&#43;</span>
                                </span>
                            </a>
                        </div>
                        <div class="text">
                            <h6>Responsive theme</h6>

                            <p>
                                There are many variations of passages of generators on the embarrassing hidden in content
                                here making it look like.
                            </p>
                        </div>
                    </div>
                    <!-- Feature -->
                    <div class="span4 feature">
                        <div class="img_box">
                            <a href="services.html">
                                <img src="<c:url value="/resources/img/service2.png"/>"/>
                                <span class="circle">
                                    <span class="plus">&#43;</span>
                                </span>
                            </a>
                        </div>
                        <div class="text">
                            <h6>Easy customization</h6>

                            <p>
                                There are many variations of passages of generators on the embarrassing hidden in content
                                here making it look like.
                            </p>
                        </div>
                    </div>
                    <!-- Feature -->
                    <div class="span4 feature last">
                        <div class="img_box">
                            <a href="services.html">
                                <img src="<c:url value="/resources/img/service3.png"/>"/>
                                <span class="circle">
                                    <span class="plus">&#43;</span>
                                </span>
                            </a>
                        </div>
                        <div class="text">
                            <h6>Made with love</h6>

                            <p>
                                There are many variations of passages of generators on the embarrassing hidden in content
                                here making it look like.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

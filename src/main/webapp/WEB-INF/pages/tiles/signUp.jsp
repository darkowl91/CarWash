<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="sign_up1">
    <div class="container">
        <div class="row">
            <div class="span12 header">
                <h4>Create your account</h4>
                <p>
                    There are many variations of passages of Lorem alteration in some form  injected humour these randomised words .</p>

                <div class="span4 social">
                    <a href="#" class="circle facebook">
                        <img src="<c:url value="/resources/img/face.png"/>" alt="" />
                    </a>
                    <a href="#" class="circle twitter">
                        <img src="<c:url value="/resources/img/twt.png"/>" alt="" />
                    </a>
                    <a href="#" class="circle gplus">
                        <img src="<c:url value="/resources/img/gplus.png"/>" alt="" />
                    </a>
                </div>
            </div>

            <div class="span3 division">
                <div class="line l"></div>
                <span>or</span>
                <div class="line r"></div>
            </div>

            <div class="span12 footer">
                <form />
                <input type="text" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <input type="password" placeholder="Confirm Password" />
                <input type="submit" placeholder="Confirm Password" value="sign up" />
                </form>
            </div>

            <div class="span12 dosnt">
                <span>Already have an account?</span>
                <a href="<c:url value="/signIn"/>">Sign in</a>
            </div>
        </div>
    </div>
</div>

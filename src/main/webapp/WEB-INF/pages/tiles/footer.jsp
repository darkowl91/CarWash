<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<footer id="footer">
	<div class="container">
		<div class="row sections">
			<div class="span4 recent_posts">
                <h3 class="footer_header"><spring:message code="carWash.welcome.resentPosts"/></h3>

                <div class="post">
                    <a href="blogpost.html">
                        <img src="resources/img/recent_post1.png" class="img-circle"/>
                    </a>
					<div class="date">Wed, 12 Dec</div>
                    <a href="blogpost.html" class="title">
                        Randomised words which don't look embarrasing hidden.
                    </a>
                </div>
				<div class="post">
                    <a href="blogpost.html">
                        <img src="resources/img/recent_post2.png" class="img-circle"/>
                    </a>
					<div class="date">Mon, 12 Dec</div>
                    <a href="blogpost.html" class="title">
                        Randomised words which don't look embarrasing hidden.
                    </a>
                </div>
			</div>
			<div class="span4 contact">
                <h3 class="footer_header"><spring:message code="carWash.welcome.contact"/></h3>

                <form id="contact_form">
                	<input id="name" name="name" type="text" required placeholder="<spring:message code="carWash.welcome.yourName"/>"/>
                    <input id="email" name="email" type="email" required placeholder="<spring:message code="carWash.welcome.yourEmail"/>"/>
                    <textarea id="message" name="message" rows="3" required placeholder="<spring:message code="carWash.welcome.message"/>"></textarea>
                    <input type="submit" value="<spring:message code="carWash.welcome.send"/>"/>
                </form>
			</div>			
		</div>
		<div class="row credits">
			<div class="span12">
                <div class="row copyright">
                    <div class="span12">
                        <spring:message code="carWash.welcome.copyright"/>
                    </div>
                </div>
			</div>
		</div>
	</div>
</footer>
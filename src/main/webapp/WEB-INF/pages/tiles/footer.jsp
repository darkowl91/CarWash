<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

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

                <form action="#" method="post">
                    <input type="text" placeholder="<spring:message code="carWash.welcome.yourName"/>"/>
                    <input type="text" placeholder="<spring:message code="carWash.welcome.yourEmail"/>"/>
                    <textarea rows="3" placeholder="<spring:message code="carWash.welcome.message"/>"></textarea>
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
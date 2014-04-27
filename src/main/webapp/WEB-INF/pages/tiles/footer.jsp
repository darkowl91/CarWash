<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<footer id="footer">
	<div class="container">
		<div class="row sections">
			<div class="span4 recent_posts">
                <h3 class="footer_header"><spring:message code="carWash.welcome.resentPosts"/></h3>
                <c:forEach var="newsItem" items="${NEWS_LIST}">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div class="media">
                                <a href="#" class="pull-left">
                                    <img height="64" width="64"
                                         src="data:image/jpeg;base64,${newsItem.picture.imageAsString}" alt=""
                                         class="media-object"/>
                                </a>

                                <div class="media-body">
                                    <h4 class="media-heading">
                                        ${newsItem.title}
                                    </h4>
                                    <p><f:formatDate type="DATE" dateStyle="SHORT" value="${newsItem.date.time}"/></p>
                                    ${newsItem.description}
                                    <div class="media">
                                        ${newsItem.description}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br/>
                </c:forEach>
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
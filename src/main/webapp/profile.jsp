<%--
  Created by IntelliJ IDEA.
  User: cerissaantill
  Date: 2019-04-16
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>

        <jsp:include page="partials/head.jsp">
            <jsp:param name="title" value="Your Profile" />
        </jsp:include>
    </head>

    <body>
        <jsp:include page="partials/navbar.jsp" />

        <div class="container">
            <h1>Welcome, ${sessionScope.user.username}!</h1>
        </div>
        <div>
            <h2>Here are your ads:</h2>
            <c:forEach var="ad" items="${userAds}">
                <div class="col-md-6">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                </div>
            </c:forEach>
        </div>

    </body>
</html>

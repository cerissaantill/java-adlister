<%--
  Created by IntelliJ IDEA.
  User: cerissaantill
  Date: 2019-04-16
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    if(request.getMethod().toLowerCase().equals("post")) {
         String username = request.getParameter("username");
         String password = request.getParameter("password");
         if(username.toLowerCase().equals("admin") && password.equals("password")) {
             response.sendRedirect("profile.jsp");
         }
    }
%>


<html>
    <head>
        <title><%= "Login page:" %></title>
        <link rel=stylesheet href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">

        <jsp:include page="partials/head.jsp">
            <jsp:param name="title" value="Please Log In:"/>
        </jsp:include>
    </head>


    <body>
        <jsp:include page="partials/navbar.jsp"/>
        <div class="container">
            <h1>Please Log In</h1>

            <!-- begin Form -->
            <form action="login.jsp" method="POST">

                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>

                <input type="submit" class="btn btn-primary btn-block" value="Log In">

            </form>  <!-- /form -->
        </div>  <!-- /container -->


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>

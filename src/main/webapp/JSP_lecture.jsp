<%--
  Created by IntelliJ IDEA.
  User: cerissaantill
  Date: 2019-04-16
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
<% counter += 1; %>
<% String name = "Zion"; %>

<html>
    <head>
        <title>Title</title>
        <%@ include file="partials/bootstrap.jsp" %>
    </head>

    <body>
    <%@ include file="partials/navbar.jsp"%>

    <h1>The current count is <%= counter %>.</h1>

    <h2 class="text-danger">Hello <%= name %>!</h2>



    <%-- this is a JSP comment, you will *not* see this in the html --%>

    <!-- this is an HTML comment, you *will* see this in the html -->


    <jsp:include page="partials/includes.jsp"/>
    <!-- same result from code structure of line 21 and line 34 -->


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>

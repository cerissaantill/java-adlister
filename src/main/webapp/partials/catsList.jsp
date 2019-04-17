<%--
  Created by IntelliJ IDEA.
  User: cerissaantill
  Date: 2019-04-17
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
    <head>
        <title>Zion Cats</title>
    </head>

    <body>
        <table>
            <thead>
                <th>Name</th>
                <th>Age</th>
                <th>Picture</th>
            </thead>

            <c:forEach var="cat" items="${cats}">
                <tr>
                    <td>${cat.name}</td>
                    <td>${cat.age}</td>
                    <td><img src="${cat.picture}" width="200px"></td>
                </tr>
        </table>

    </body>

</html>

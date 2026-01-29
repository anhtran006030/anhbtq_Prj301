<%-- 
    Document   : welcome
    Created on : Jan 26, 2026, 9:25:06 AM
    Author     : se184
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Home</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty sessionScope.user}">
                <h1>Welcome, ${sessionScope.user.fullName}</h1>
                <a href="MainController?action=logout">Logout</a><br/>
                <a href="search.jsp">Search</a>
            </c:when>

            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>
        </c:choose>
    </body>
</html>
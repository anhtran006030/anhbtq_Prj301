<%-- 
    Document   : login
    Created on : Jan 19, 2026, 9:55:52 AM
    Author     : se184
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>login</title>
    </head>
    <body>
        <form action="MainController" method="post">
            Username: <input type="text" name="txtUsername" required="required" /> <br/>
            Password:
            <input type="password" name="txtPassword" required="required" /> <br/>
            <input type="submit" value="Login" />
        </form>
        <c:if test="${not empty message}">
            <span style="color:red">${message}</span>
        </c:if>
    </body>
</html>
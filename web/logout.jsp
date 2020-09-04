<%-- 
    Document   : logout
    Created on : Nov 19, 2018, 6:12:56 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut</title>
    </head>
    <body>
        <h1>Logout</h1>
        <% 
                session.setAttribute("username", null);
        %>
    </body>
</html>

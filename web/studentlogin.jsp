<%-- 
    Document   : studentlogin
    Created on : Nov 16, 2018, 2:59:21 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
    </head>
    <body>
        <h1>Student Login</h1>
        <form method="POST" action="/shannuproject/student.jsp">
            <p>Username : <input name="username"></p>
            <p>Password : <input name="password"></p>
            <button>Login</button>
            
        </form>
    </body>
</html>

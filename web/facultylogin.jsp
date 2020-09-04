<%-- 
    Document   : facultylogin
    Created on : Nov 16, 2018, 3:11:31 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty login</title>
    </head>
    <body>
        <h1>Faculty login</h1>
        <form action="/shannuproject/faculty.jsp" method="POST">
            <p>Username : <input name="username"></p>
            <p>Password : <input name="password"></p>
            <button>Login</button>
            
        </form>
    </body>
</html>

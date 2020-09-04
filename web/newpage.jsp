<%-- 
    Document   : newpage
    Created on : Nov 15, 2018, 5:56:35 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login testing part 2</h1>
        <% 
            String userid = request.getParameter("username");
            String password = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
            Statement st = con.createStatement();
            PreparedStatement ps = con.prepareStatement("select * from users where username=? and password=?");
            ps.setString(1, userid);
            ps.setString(2, password);
            ResultSet rs;
            rs = ps.executeQuery();
            if(rs.next()){
                session.setAttribute("username", userid);
                out.println("Login in successfully");
            } else{
                out.println("Invalid credentials");
            }
         %>
    </body>
</html>

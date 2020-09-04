<%-- 
    Document   : panel
    Created on : Nov 16, 2018, 3:18:32 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel dashboard</title>
    </head>
    <body>
        <h1>Panel Dashboard</h1>
        <% 
            String userid = request.getParameter("username");
            String password = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
            Statement st = con.createStatement();
            PreparedStatement ps = con.prepareStatement("select * from panel where username=? and password=?");
            ps.setString(1, userid);
            ps.setString(2, password);
            ResultSet rs;
            rs = ps.executeQuery();
            if(rs.next()){
                session.setAttribute("username", userid);
                out.println("<h1>Hello</h2>");
                out.print(userid);
                out.println("<ul><li><a href='/shannuproject/addingstudent.jsp'>Add student</a></li><li><a href='/shannuproject/viewstudent.jsp'>View student</a></li><li><a href='/shannuproject/deletestudent.jsp'>Delete student</a></li><li><a href='/shannuproject/addingfaculty.jsp'>Add Faculty</a></li><li><a href='/shannuproject/viewfaculty.jsp'>View faculty</a></li><li><a href='/shannuproject/deletefaculty.jsp'>Delete faculty</a></li></ul>");
            } else{
                out.println("Invalid credentials");
            }
         %>
        
    </body>
</html>

<%-- 
    Document   : studentdeleted
    Created on : Nov 17, 2018, 11:21:52 AM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleted student</title>
    </head>
    <body>
        <h1>Deleting student</h1>
        <%
            String facultyid = request.getParameter("facultyid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
                Statement st = con.createStatement();
                PreparedStatement ps = con.prepareStatement("delete from faculty where facultyid=?");
                ps.setString(1, facultyid);
                int i = ps.executeUpdate();
                if(i>0){
                out.println("You have deleted ");
                out.println(facultyid);
                } else {
                    out.println("Faculty not deleted. Either faculty with that id doesn't exit or any other problem occured!");
                }
        %>
    </body>
</html>

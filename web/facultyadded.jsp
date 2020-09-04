<%-- 
    Document   : facultyadded
    Created on : Nov 16, 2018, 5:19:06 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty added</title>
    </head>
    <body>
        <%
            
                String facultyusername = request.getParameter("facultyusername");
                String facultypassword = request.getParameter("facultypassword");
                String facultyid = request.getParameter("facultyid");
                String facultyemail = request.getParameter("facultyemail");
                String facultymobile = request.getParameter("facultymobile");
                String facultyaddress = request.getParameter("facultyaddress");
                String facultysex = request.getParameter("facultysex");
                String facultysubject1 = request.getParameter("facultysubject1");
                String facultysubject2 = request.getParameter("facultysubject2");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
                Statement st = con.createStatement();
                PreparedStatement ps = con.prepareStatement("insert into faculty values(?,?,?,?,?,?,?,?,?)");
                ps.setString(1,facultyusername);
                ps.setString(2, facultypassword);
                ps.setString(3, facultyid);
                ps.setString(4, facultymobile);
                ps.setString(5, facultysex);
                ps.setString(6, facultyemail);
                ps.setString(7, facultyaddress);
                ps.setString(8, facultysubject1);
                ps.setString(9, facultysubject2);
                int i = ps.executeUpdate();
                if(i>0){
                out.println("You have added ");
                out.println(facultyusername);
                } else {
                    out.println("Student not created");
                }
            
        
        %>
    </body>
</html>

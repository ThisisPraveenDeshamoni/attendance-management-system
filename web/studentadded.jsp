<%-- 
    Document   : studentadded
    Created on : Nov 16, 2018, 4:07:57 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student added</title>
    </head>
    <body>
        <%
            
                String studentusername = request.getParameter("studentusername");
                String studentpassword = request.getParameter("studentpassword");
                String studentid = request.getParameter("studentid");
                String studentfather = request.getParameter("studentfather");
                String studentdateofbirth = request.getParameter("studentdateofbirth");
                String studentemail = request.getParameter("studentemail");
                String studentbatch = request.getParameter("studentbatch");
                String studentsemester = request.getParameter("studentsemester");
                String studentguardianemail = request.getParameter("studentguardianemail");
                String studentaddress = request.getParameter("studentaddress");
                String studentsex = request.getParameter("studentsex");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
                Statement st = con.createStatement();
                PreparedStatement ps = con.prepareStatement("insert into students values(?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,studentusername);
                ps.setString(2, studentpassword);
                ps.setString(3, studentid);
                ps.setString(4,studentfather);
                ps.setString(5, studentdateofbirth);
                ps.setString(6, studentemail);
                ps.setString(7, studentbatch);
                ps.setString(8, studentsemester);
                ps.setString(9, studentguardianemail);
                ps.setString(10, studentaddress);
                ps.setString(11, studentsex);
                int i = ps.executeUpdate();
                if(i>0){
                out.println("You have added ");
                out.println(studentusername);
                } else {
                    out.println("Student not created");
                }
            
        
        %>
    </body>
</html>

<%-- 
    Document   : addingstudent
    Created on : Nov 16, 2018, 3:56:37 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submission of adding student</title>
    </head>
    <body>
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
            Statement st = con.createStatement();
            PreparedStatement ps = con.prepareStatement("select * from panel where username=?");
            String user = (String)session.getAttribute("username");
            ps.setString(1,user);
            out.println("User : "+user);
            %>
        <h1>Adding Student</h1>
        <form method="POST" action="/shannuproject/studentadded.jsp">
            <p>Student id : <input name="studentid"></p>
            <p>Student username : <input name="studentusername"></p>
            <p>Student password : <input name="studentpassword"></p>
            <p>Student father name : <input name="studentfather"></p>
            <p>Student email : <input name="studentemail"></p>
            <p>Student dateofbirth : <input name="studentdateofbirth"></p>
            <p>Student batch : <input name="studentbatch"></p>
            <p>Student semester : <input name="studentsemester"></p>
            <p>Student guardian email : <input name="studentguardianemail"></p>
            <p>Student address : <input name="studentaddress"></p>
            <p>Student sex : <input name="studentsex"></p>
            <button>Submit</button>
            
        </form>
        
            <%
            
            }catch(Exception e){
                out.println("You are not a panel");
            }
            
            
        %>
    </body>
</html>

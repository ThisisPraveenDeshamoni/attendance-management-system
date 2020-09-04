<%-- 
    Document   : viewstudent
    Created on : Nov 18, 2018, 3:30:25 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View student</title>
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
        <h1>View Student</h1>
        <form method="POST" action="/shannuproject/studentviewed.jsp">
            <p>Student id : <input name="studentid"></p>
            <button>View</button>
        </form>
          <%
            
            }catch(Exception e){
                out.println("You are not a panel");
            }
            
            
        %>
    </body>
</html>

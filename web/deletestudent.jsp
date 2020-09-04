<%-- 
    Document   : deletestudent
    Created on : Nov 17, 2018, 11:18:52 AM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete student</title>
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
        <h1>Deleting student </h1>
        <form method="POST" action="/shannuproject/studentdeleted.jsp">
            <p>Enter student id : <input name="studentid"></p>
            <button>delete</button>
            
        </form>
        
            <%
            
            }catch(Exception e){
                out.println("You are not a panel");
            }
            
            
        %>
    </body>
</html>

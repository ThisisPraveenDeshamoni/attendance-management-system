<%-- 
    Document   : addingfaculty
    Created on : Nov 16, 2018, 5:17:14 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submission of adding faculty</title>
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
        <h1>Adding Faculty</h1>
        <form method="POST" action="/shannuproject/facultyadded.jsp">
            <p>Faculty id : <input name="facultyid"></p>
            <p>Faculty username : <input name="facultyusername"></p>
            <p>Faculty password : <input name="facultypassword"></p>
            <p>Faculty email : <input name="facultyemail"></p>
            <p>Faculty mobile : <input name="facultymobile"></p>
            <p>Faculty address : <input name="facultyaddress"></p>
            <p>Faculty sex : <input name="facultysex"></p>
            <p>Faculty subject1 : <input name="facultysubject1"></p>
            <p>Faculty subject2 : <input name="facultysubject2"></p>
            <button>Submit</button>
            
        </form>
            
            
            <%
            
            }catch(Exception e){
                out.println("You are not a panel");
            }
            
            
        %>
    </body>


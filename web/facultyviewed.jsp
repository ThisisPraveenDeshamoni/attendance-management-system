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
        <title>Faculty Details</title>
    </head>
    <body>
        <h1>Faculty details</h1>
        <%
            ResultSet resultset =null;
            String facultyid = request.getParameter("facultyid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
                Statement st = con.createStatement();
                String sql = "select * from faculty where facultyid="+facultyid;
                resultset = st.executeQuery(sql);
                if(resultset.next()){
            out.println("Username : "+resultset.getString("username")); %><br><%
                    out.println("Faculty id : "+resultset.getString("facultyid"));%><br><%
                    out.println("Faculty email : "+resultset.getString("facultyemail"));%><br><%
                    out.println("Faculty mobile : "+resultset.getString("facultymobile"));%><br><%
                    out.println("Faculty sex : "+resultset.getString("facultysex"));%><br><%
                    out.println("Faculty address : "+resultset.getString("facultyaddress"));%><br><%
                    out.println("Faculty subject1 : "+resultset.getString("facultysubject1"));%><br><%
                    out.println("Faculty subject2 : "+resultset.getString("facultysubject2"));%><br><%
                   
                }else{
                    out.println("No data found with that id");
}
            
        
        %>
    </body>
</html>

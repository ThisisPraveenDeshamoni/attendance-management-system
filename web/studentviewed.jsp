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
        <title>Student details</title>
    </head>
    <body>
        <h1>Student Details</h1>
        <%
            ResultSet resultset =null;
            String studentid = request.getParameter("studentid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
                Statement st = con.createStatement();
                String sql = "select * from students where studentid="+studentid;
                resultset = st.executeQuery(sql);
                if(resultset.next()){
            out.println("Username : "+resultset.getString("username")); %><br><%
                    out.println("Student id : "+resultset.getString("studentid"));%><br><%
                    out.println("Student father name : "+resultset.getString("studentfather"));%><br><%
                    out.println("Student date of birth : "+resultset.getString("studentdateofbirth"));%><br><%
                    out.println("Student email : "+resultset.getString("studentemail"));%><br><%
                    out.println("Student batch : "+resultset.getString("studentbatch"));%><br><%
                    out.println("Student semester : "+resultset.getString("studentsemester"));%><br><%
                    out.println("Student guardian email : "+resultset.getString("studentguardianemail"));%><br><%
                    out.println("Student address : "+resultset.getString("studentaddress"));%><br><%
                    out.println("Student sex : "+resultset.getString("studentsex"));%><br><%
                    
                }else{
                    out.println("No data found with that id");
}
            
        
        %>
    </body>
</html>

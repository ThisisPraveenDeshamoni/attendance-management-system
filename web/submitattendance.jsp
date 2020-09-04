<%-- 
    Document   : submitattendance
    Created on : Nov 21, 2018, 11:03:06 AM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance submitted</title>
    </head>
    <body>
        <h1>Attendance Submitted</h1>
       
        <%
            try{
            String semester = request.getParameter("semester");
            String date = request.getParameter("date");
                ResultSet resultset = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
            Statement st = con.createStatement();
            PreparedStatement ps = con.prepareStatement("select * from faculty where username=?");
            String user = session.getAttribute("username").toString();
            ps.setString(1,user);
            out.println("User : "+user);
            String sql = "select * from faculty where username='"+user+"'";
            resultset = st.executeQuery(sql);
                if(resultset.next()){
                   String studentsql = "select * from students where studentsemester='"+semester+"'";
                   ResultSet studentsqlresultset = st.executeQuery(studentsql);
                   int i = 0;
                   while(studentsqlresultset.next()){
                        PreparedStatement ps1 = con.prepareStatement("insert into attendance values(?,?,?,?)");
                        ps1.setString(1,date);
                        ps1.setString(2,studentsqlresultset.getString("username"));
                        ps1.setString(3,request.getParameter(studentsqlresultset.getString("username")));
                        ps1.setString(4, request.getParameter("subject"));
                        i = ps1.executeUpdate();
                        
                      
                      out.println(studentsqlresultset.getString("username"));
                    }if(i>0){
                        out.println("done with attendance");
                    }
                }
            } catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
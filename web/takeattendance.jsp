<%-- 
    Document   : takeattendance
    Created on : Nov 19, 2018, 5:50:45 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance</title>
    </head>
    <body>
        <%
            try{
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
                    %>
                    <h1>Take Attendance</h1>
                    <form method="get" action="/shannuproject/attendance.jsp">
                        <p>Enter Date(dd/mm/yyyy) : <input type="text" name='date'></p>
                        <select name='subject'> 
                            <option value='<%out.println(resultset.getString("facultysubject1"));%>'><% out.println(resultset.getString("facultysubject1")); %></option>
                            <option value='<%out.println(resultset.getString("facultysubject2"));%>'><% out.println(resultset.getString("facultysubject2")); %></option>
                            
                         </select>
                            <button>submit</button>
                    </form>
        
        <%
                }
            
            
        %>
        
          <%
            
            }catch(Exception e){
                out.println("You are not a faculty"+e);
            }
            
            
        %>
    </body>
</html>

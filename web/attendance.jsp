<%-- 
    Document   : attendance
    Created on : Nov 19, 2018, 7:07:38 PM
    Author     : pavan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Taking attendance</title>
    </head>
    <body>
        <%
            String subject = request.getParameter("subject");
            String date = request.getParameter("date");
            subject = subject.trim();
            out.println(request.getParameter("subject"));
                ResultSet resultset = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shannuprojectdatabase", "root", "95425198r@");
            Statement st = con.createStatement();
            PreparedStatement ps = con.prepareStatement("select * from students where subject=?");
            String user = session.getAttribute("username").toString();
            ps.setString(1,user);
            out.println("User : "+user);
            String sql = "select * from faculty where username='"+user+"'";
            resultset = st.executeQuery(sql);
                if(resultset.next()){
                    try{
                        String subsql = "select semester from subjectsinsemester where '"+subject+"' in (subject1,subject2)";
                        ResultSet subresultset = st.executeQuery(subsql);
                        if(subresultset.next()){
                            String semester = subresultset.getString("semester");
                            out.println(subresultset.getString("semester"));
                            String studentsdata = "select * from students where studentsemester='"+semester+"'";
                            ResultSet studentsresultset = st.executeQuery(studentsdata);
                            %>
                            <form action="/shannuproject/submitattendance.jsp" method="POST">
                                <input type='hidden' name="semester" value='<%out.print(semester);%>'>
                                <input type='hidden' name='date' value='<%out.print(request.getParameter("date"));%>'>
                                <input type='hidden' name='subject' value='<%out.print(subject);%>'>
                                
                                
            <%
                            while(studentsresultset.next()){
                                out.print(studentsresultset.getString("username"));
                                %>
                                    
                                <select name='<%out.print(studentsresultset.getString("username"));%>'> 
                            <option value='Present'>Present</option>
                            <option value='Absent'>Absent</option>
                            
                        </select><br>
                                <%
                                
                            }
                            
                            %>
                            <button type='submit'>Submit Attendance</button>
                            </form>
                                <%
                            
                        }
                        
                    }catch(Exception e){
                        out.println(e);
                        
                    }
                }
            %>
    </body>
</html>

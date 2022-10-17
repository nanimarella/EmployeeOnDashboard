<%-- 
    Document   : viewfunctional
    Created on : Sep 11, 2018, 12:27:36 PM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view personal data</title>
    </head>
    <style>
    table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 75%;
}

th {
    height: 50px;
}
</style>
    
    <body>
        <h1>view functional data</h1>
        
        <table class="table table-responsive table-bordered">
            
            <tr>
                <th>Employee Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Starting Date</th>
                 <th>Department</th>
                 <th>Position</th>
                 <th>Location</th>
                </tr>
            
         <%
        try{
        String sql="select *from functional";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
        PreparedStatement ps=con.prepareStatement(sql);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
          %>
          <tr>
              <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                      <td><%=rs.getString(7)%></td>
                      <td><%=rs.getString(8)%></td>
                      <td><button onclick="location.href='viewfundelete.jsp?id=<%=rs.getString(1)%>';">Delete</button></td>
                 </tr>
               
                      <%
                
                                }
       
                                }
                                catch(Exception e)
                                {
                                   System.out.println(e); 
                                }
                                %>
                                
        </table>
    
        </body>
</html>


<%-- 
    Document   : fun
    Created on : Sep 17, 2018, 1:39:16 PM
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
        <title>JSP Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      </head>
      <style>
          body{
              background-color: #dcdcdc;
          }
          #box{
          width: 100%;
          height: 600px;
          background-color: #fff;
          margin-top: 50px;
          }
          
          </style>
    
    <body>
        <div class="container">
        <div id="box">
   
   
                <div id="tab">
        <table class="table table-responsive table-bordered">
                         <thead>
                            <th>ID</th>
                            <th>FIRST NAME</th>
                            <th>LAST NAME</th>
                            <th>EMAIL</th>
                            <th>STARTING DATE</th>
                            <th>DEPARTMENT</th>
                            <th>LOCATION</th>
                            <td>POSITION</td>
                            <td>UPDATE</td>
                            <td>DELETE</td>
                           
                        </thead>
                        <tbody>
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
                       <td><button onclick="location.href='funupdate.jsp?id=<%=rs.getString(1)%>'">update</button></td>
                       <td><button onclick="location.href='fundelete.jsp?id=<%=rs.getString(1)%>'">Delete</button></td>
                       
          </tr>
          <%
                
                                }
      
                                }
                                catch(Exception e)
                                {
                                   System.out.println(e); 
                                }
                                %>
                        <tbody>
  
                    </table>


                </div>
        </div>
            </div>
            
    </body>
</html>
 
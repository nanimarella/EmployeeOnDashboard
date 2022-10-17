<%-- 
    Document   : funupdate
    Created on : Sep 4, 2018, 4:05:36 PM
    Author     : HAREESH KUMAR REDDY
--%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>
<body>
    
<form action="funupback.jsp" method="post">
<h1> <B>update</B></h1>
 <%
                String id=request.getParameter("id");
           
              try
 {
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
        PreparedStatement ps=con.prepareStatement("select *  from functional where id="+id);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
   {
       
  %>
<table>
<tr>
 <td> Employee id:</td><td> <input type="text" name="id" id="id" value="<%=rs.getString(1)%>" style="height:25px;width:300px;" /> </td> 
</tr><br>
   <tr>
 <td> First Name :</td><td> <input type="text" name="fname"  id="fname"  value="<%=rs.getString(2)%>" style="height:25px;width:300px;" /> </td> 
 </tr><br>
 <tr>
 <td> Last Name : </td><td> <input type="text" name="lname" id="lname" value="<%=rs.getString(3)%>" style="height:25px;width:300px;" /> </td>
 </tr>
  <tr>
 <td> Email-Id: </td><td> <input type="text" name="email"  id="email"  value="<%=rs.getString(4)%>" style="height:25px;width:300px;"/> </td> 
 </tr>
 <tr>
 <td> Starting Date: </td><td> <input type="text" name="startingdate"  id="startingdate"  value="<%=rs.getString(5)%>" style="height:25px;width:300px;"/> </td> 
 </tr>
 <tr>
 <td> Department: </td><td> <input type="text" name="department"  id="department"  value="<%=rs.getString(6)%>" style="height:25px;width:300px;"/> </td> 
 </tr>
 <tr>
 <td>Position: </td><td> <input type="text" name="position"  id="position"  value="<%=rs.getString(7)%>"style="height:25px;width:300px;"/> </td> 
 </tr>
 <tr>
 <td> Location: </td><td> <input type="text" name="location"  id="location"  value="<%=rs.getString(8)%>" style="height:25px;width:300px;"/> </td> 
 </tr>
 
 <tr>
  <td><input type="submit" value="submit"></td>
 <td><input type="button" name="Reset" value="Reset"  onclick="window.location.reload();"></td>
  </tr>
</table>
 <%  
}
else{
out.println("no records");
}
}
catch(Exception e )
{
 out.print(e);
}
%>
          </form>
    </body>
    </html>



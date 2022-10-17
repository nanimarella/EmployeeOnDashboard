<%-- 
    Document   : update
    Created on : Aug 31, 2018, 4:20:15 PM
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
<form action="updateback.jsp" method="post">
<h1> <B>update</B></h1>
 <%
                String id=request.getParameter("id");
           
              try
 {
                    Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
        PreparedStatement ps=con.prepareStatement("select *  from personal where id="+id);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
   {
       
  %>
<table>
<tr>
 <td> Employee id:</td><td> <input type="text" name="id" id="id" value="<%=rs.getString(1)%>"readonly style="height:25px;width:300px;" /> </td> 
</tr><br>
   <tr>
 <td> First Name :</td><td> <input type="text" name="fname"  id="fname"  value="<%=rs.getString(2)%>" style="height:25px;width:300px;" /> </td> 
 </tr><br>
 <tr>
 <td> Last Name : </td><td> <input type="text" name="lname" id="lname" value="<%=rs.getString(3)%>" style="height:25px;width:300px;" /> </td>
 </tr>
  <tr>
 <td> Date Of Birth : </td><td> <input type="date" name="dob"  id="dob" value="<%=rs.getString(5)%>" style="height:25px;width:300px;"/> </td> 
 </tr>
 <tr>
 <td> Email-Id: </td><td> <input type="text" name="email"  id="email"  value="<%=rs.getString(6)%>" style="height:25px;width:300px;"/> </td> 
 </tr>
 <tr>
  <td>  Address: </td><td> <input type="text" name="address"  id="address"  value="<%=rs.getString(7)%>" style="height:25px;width:300px;" /></td> 
</tr>
<tr>
<td> Pan Number : </td><td> <input type="text" name="Panno" id="panno"value="<%=rs.getString(8)%>"  style="height:25px;width:300px;" /> </td> 
</tr>
<tr>
<td> Phone number : </td><td> <input type="text" name="Phno" id="phno"value="<%=rs.getString(9)%>"  style="height:25px;width:300px;" /> </td> 
</tr>
<tr>
<td> Dependent1: </td><td> <input type="text" name="dpt1"  id="dpt1"  value="<%=rs.getString(10)%>" style="height:25px;width:300px;"/> </td> 
</tr>
<tr>
<td> Dependent2: </td><td> <input type="text" name="dpt2"  id="dpt2" value="<%=rs.getString(11)%>"readonly style="height:25px;width:300px;"/> </td> 
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


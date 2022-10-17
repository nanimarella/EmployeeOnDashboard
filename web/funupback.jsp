<%-- 
    Document   : funupdate
    Created on : Sep 4, 2018, 2:50:46 PM
    Author     : HAREESH KUMAR REDDY
--%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/nishanthi";%>
<%!String user = "root";%>
<%!String psw = "root";%> 
<%
String id = request.getParameter("id");
String firstname=request.getParameter("fname");
String lastname=request.getParameter("lname");
String email=request.getParameter("email");
String startingdate=request.getParameter("startingdate");
String department=request.getParameter("department");
String position=request.getParameter("position");
String location=request.getParameter("location");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update functional set Id=?,fname=?,lname=?,email=?,startingdate=?,department=?,position=?,location=? where id="+personID;
ps = con.prepareStatement(sql);
ps.setString(1,id);    
ps.setString(2, firstname);
ps.setString(3, lastname);
ps.setString(4, email);
ps.setString(5, startingdate);
ps.setString(6, department);
ps.setString(7, position);
ps.setString(8, location);


int i = ps.executeUpdate();
if(i > 0)
{
%>
<script lang="javascript">
    alert("Data Updated succefull...");
    
</script>
<%
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

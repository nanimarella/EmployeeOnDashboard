<%-- 
    Document   : updateback
    Created on : Sep 4, 2018, 10:10:13 AM
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
String dob=request.getParameter("dob");
String email=request.getParameter("email");
String address=request.getParameter("address");
String pannumber=request.getParameter("panno");
String phonenumber=request.getParameter("phno");
String dependent1=request.getParameter("dpt1");
String dependent2=request.getParameter("dpt2");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update personal set Id=?,fname=?,lname=?,dob=?,email=?,address=?,panno=?,phno=?,dpt1=?,dpt2=? where id="+personID;
ps = con.prepareStatement(sql);
ps.setString(1,id);    
ps.setString(2, firstname);
ps.setString(3, lastname);
ps.setString(4, dob);
ps.setString(5, email);
ps.setString(6, address);
ps.setString(7, pannumber);
ps.setString(8, phonenumber);
ps.setString(9, dependent1);
ps.setString(10, dependent2);


int i = ps.executeUpdate();
if(i > 0)
{
%>
<script lang="javascript">
    alert("Data Updated succefull...");
    window.location.href="perfun.jsp";
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

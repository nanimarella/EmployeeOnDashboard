<%-- 
    Document   : fundelete
    Created on : Sep 20, 2018, 12:09:11 PM
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

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="delete from functional where id="+personID;
ps = con.prepareStatement(sql);   

int i = ps.executeUpdate();
if(i > 0)


{
%>
<script lang="javascript">
    alert("Data deleted succefull...");
    window.location.href="fun.jsp";
    
</script>
<%
}
else
{
out.print("There is a problem in deleted Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>



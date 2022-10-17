<%-- 
    Document   : logbackend
    Created on : Aug 22, 2018, 7:40:08 PM
    Author     : HAREESH KUMAR REDDY
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  String uname=request.getParameter("username");
  String pwd=request.getParameter("pwd");
  try
  {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
   PreparedStatement ps=con.prepareStatement("select * from registration where uname='"+uname+"' and pwd='"+pwd+"'");
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
       %>
       <script>
           alert("login successfully");
           window.location.href="window1.jsp";
           </script>
           <%
           }
}
catch(Exception e )
{
 out.print(e);
}

%>
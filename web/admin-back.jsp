<%-- 
    Document   : admin-back
    Created on : Sep 20, 2018, 3:19:10 PM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
   
    
        try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
        PreparedStatement ps=con.prepareStatement("select * from login where username='"+username+"'and password='"+password+"'");
        ResultSet rs=ps.executeQuery();
        if(rs.next())
   {
       session.setAttribute("username",username);
      
         %>
         
      <script>
             alert("successfull");
            window.location.href="hrdashboard.jsp;"
             </script>
         <%
         }
         }
         catch (Exception e)
          {
       out.println(e);
         }
          %> 
    

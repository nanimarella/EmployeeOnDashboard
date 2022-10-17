<%-- 
    Document   : hrlog-back
    Created on : Aug 31, 2018, 10:39:45 AM
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
        PreparedStatement ps=con.prepareStatement("select * from hrlogin where username='"+username+"'and password='"+password+"'");
        ResultSet rs=ps.executeQuery();
        if(rs.next())
   {
       session.setAttribute("username",username);
      
         %>
         
      <script>
             alert("successfull");
             window.location.href="hrdashboard.jsp";
             </script>
         <%
         }
         }
         catch (Exception e)
          {
       out.println(e);
         }
          %> 
    

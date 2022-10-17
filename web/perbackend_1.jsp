<%-- 
    Document   : perbackend
    Created on : Aug 23, 2018, 3:08:23 PM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.mysql.jdbc.StringUtils"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String dob=request.getParameter("dob");
     String email=request.getParameter("email");
    String address=request.getParameter("address");
    String panno=request.getParameter("panno");
    String phno=request.getParameter("phno");
    String dpt1=request.getParameter("dpt1");
    String dpt2=request.getParameter("dpt2");
    String uname=fname+lname;
    int d=uname.length();
   String pwd="";
   String chars="abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
   for(int i=0;i<8;i++)
   {
      int x=(int)Math.floor(Math.random()* chars.length());
       pwd+=chars.charAt(x);
       
       
   }
   out.println(pwd);

   
      try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
        PreparedStatement ps=con.prepareStatement("insert into personal(fname,lname,username,dob,email,address,panno,phno,dpt1,dpt2,pwd)values('"+fname+"','"+lname+"','"+uname+"','"+dob+"','"+email+"','"+address+"','"+panno+"','"+phno+"','"+dpt1+"','"+dpt2+"','"+pwd+"')");
        int i=ps.executeUpdate();
        if(i>0)
        {
         %>
         <script>
             window.location.href="perfun.jsp";
             </script>
         <%
         }
         }
         catch (Exception e)
          {
       out.println(e);
         }
          %>
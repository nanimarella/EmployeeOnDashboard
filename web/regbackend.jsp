<%-- 
    Document   : regbackend
    Created on : Aug 22, 2018, 10:20:05 AM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>*

<%
   String fname=request.getParameter("fname");
   String lname=request.getParameter("lname");
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd");
   String cpwd=request.getParameter("cpwd");
   String email=request.getParameter("email");
   String gender=request.getParameter("gender");
   String phno=request.getParameter("phno");
   String pannum=request.getParameter("pannum");
   try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
       PreparedStatement ps=Con.prepareStatement("insert into registration(fname,lname,uname,pwd,cpwd,email,gender,phno,pannum)values('"+fname+"','"+lname+"','"+uname+"','"+pwd+"', '"+cpwd+"','"+email+"','"+gender+"','"+phno+"','"+pannum+"')");
       int i=ps.executeUpdate();
       if(i>0){
  %>
    <script>
        alert("register successfully");
        window.location.href="login.jsp";
     </script>
     <%
    }
}
  catch(Exception e){
   out.println(e);
  }
  %>

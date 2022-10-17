<%-- 
    Document   : funbackend
    Created on : Aug 23, 2018, 4:33:50 PM
    Author     : HAREESH KUMAR REDDY
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    String id=request.getParameter("id");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String s1=request.getParameter("startingdate");
    String s2=request.getParameter("department");
    String s3=request.getParameter("position");
    String s4=request.getParameter("location");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
        PreparedStatement ps=con.prepareStatement("insert into functional(id,fname,lname,email,startingDate,department,position,location)values('"+id+"','"+fname+"','"+lname+"','"+email+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
        int i=ps.executeUpdate();
        if(i>0)
        {
            %>
            <script>
                alert("succesful");
               window.location.href="perfun.jsp";
                </script>
                }
                <%
                    }
}
catch (Exception e)
{
out.println(e);
}
%>
            
        
        
   

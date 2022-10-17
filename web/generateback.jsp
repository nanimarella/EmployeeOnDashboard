<%-- 
    Document   : genarateback
    Created on : Sep 11, 2018, 3:50:04 PM
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
    
    String username=fname+lname;
    int d=username.length();
  String row_password=request.getParameter("row_password");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");
        PreparedStatement ps=con.prepareStatement("insert into generate(id,fname,lname,email,startingdate,department,position,location,username,pwd)values('"+id+"','"+fname+"','"+lname+"','"+email+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+username+"','"+row_password+"')");
        int i=ps.executeUpdate();
        if(i>0)
        {
            %>
            <script>
                alert(" genarate succesful");
               window.location.href="textfile.jsp";
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
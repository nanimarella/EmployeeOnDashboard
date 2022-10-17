<%-- 
    Document   : generate
    Created on : Sep 11, 2018, 3:35:40 PM
    Author     : HAREESH KUMAR REDDY
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
   function randomPassword(length) {
    var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP1234567890";
    var pass = "";
    for (var x = 0; x < length; x++) {
        var i = Math.floor(Math.random() * chars.length);
        pass += chars.charAt(i);
    }
    return pass;
}

function generate() {
    myform.row_password.value = randomPassword(myform.length.value);
}
function username()
{
if(document.myform.username.value==='' && document.myform.fname.value!=='' && document.myform.lname.value!='') {
     var username = '';
     if(document.myform.lname.value.length >= 14) {
          username = document.myform.fname.value.substr(0,14) + document.myform.lname.value.substr(0,49);
     } else {
          username = document.myform.fname.value.substr(0,14) + document.myform.lname.value.substr(0,49);
     }
     username = username.replace(/\s+/g, '');
     username = username.replace(/\'+/g, '');
     username = username.replace(/-+/g, '');
     username = username.toLowerCase();
     document.myform.username.value = username;
}
}
</script>

    <style>
         div{
                margin-right:500px;
                margin-left:500px;
            }
            body{
                background-color: aqua;
            }
        </style>
    <body onload="username()">
   
        <div>
        <h1>generate</h1>
          <%
           String id1=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi", "root", "root");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("select * from personal where id='"+id1+"'");
        while(rs.next())
          {
        %>
        
        <form name="myform"  method="post" action="generateback.jsp" >
            
        <label for="id">
            Employee ID:-
            </label>
        <input type="text" name="id" id="id" value="<%=rs.getString(1) %>"  style="height:25px;width:300px;"><br>
        <label for="fname">
            First Name:-
            </label>
        <input type="text" name="fname"  value="<%=rs.getString(2) %>"  style="height:25px;width:300px;"><br>
        <label for="lname">
            Last Name:-
            </label>
        <input type="text" name="lname"  value="<%=rs.getString(3) %>"  style="height:25px;width:300px;"><br>
        <label for="email">
            Email Id:-
            </label>
        <input type="text" name="email"  value="<%=rs.getString(6) %>"  style="height:25px;width:300px;"><br>
    <%}%>
<br>
         <%
          String id=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver");

        Statement stmt1=conn.createStatement();
        ResultSet rs1=stmt1.executeQuery("select * from functional where id='"+id+"'");
        while(rs1.next())
          {
        %>
        
         <label>
            Starting Date:-
            </label>
        <input type="text" name="startingdate" value="<%=rs1.getString(5) %>"   style="height:25px;width:300px;"><br>
        <label>
            Department:-
            </label>
        <input type="text" name="department"  value="<%=rs1.getString(6) %>"   style="height:25px;width:300px;"><br>
        <label for="position">
            position:-
            </label>
        <input type="text" name="position"  value="<%=rs1.getString(7) %>"   style="height:25px;width:300px;"><br>
        <label for="location">
           location:-
            </label> 
        <input type="text"  name="location"  value="<%=rs1.getString(8) %>"   style="height:25px;width:300px;"><br>
<%}%>
<br>

<label for="username">Username: </label><input type="text" name="username" id="username" style="height:25px;width:300px;"/>
<input type="hidden" name="length" value="6">
<label for="password">Password:</label>
                <input name="row_password" type="text" style="height:25px;width:300px;">&nbsp;
                <input type="button" class="button" value="Generate" onClick="generate();" tabindex="2">
            
<input type="submit" value="submit" >
       
        </form>

        </div>
         
    </body>
</html>

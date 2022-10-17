
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</script>
  
<body>    
 <form name="myform" method="post" action="userandom_back.jsp"> <br> 
      
       
      <%
       
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi", "root", "root");
         Statement smt=con.createStatement();
         ResultSet rs=smt.executeQuery("select * from personal ");
        while(rs.next())
         {
                                  %>  
       
      
          

           
  id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="id" value="<%=rs.getString(1) %>"
<br><br>
                                       
                                  
firstname:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="firstname" value="<%=rs.getString(2) %>"
<br><br>
lastname:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="lastname" value="<%=rs.getString(3) %>" 
<br><br>
 email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="email" name="email" value="<%=rs.getString(6) %>" 
<br><br>


<%}%>
<br>
 
 
 
  <%
                                  
         Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi", "root", "root");
         Statement stmt=conn.createStatement();
          ResultSet rs1=stmt.executeQuery("select * from functional ");
                                      while(rs1.next())
                                      {
                                  %>
  

startingdate: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="startingdate" value="<%=rs1.getString(5) %>"  
<br><br>
department: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="department" value="<%=rs1.getString(6) %>"  
<br><br>
position:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="position" value="<%=rs1.getString(7) %>"  
<br><br>
 location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="location" value="<%=rs1.getString(8) %>" 
<br><br>


<%}%>
<br>

      

          
<div><label for="Id">Id: </label><input type="text" name="id" id="id"  /></div> <br>                                
<div><label for="fname">First Name: </label><input type="text" name="fname"  id="fname" /></div><br>
<div><label for="lname">Last Name: </label><input type="text" name="lname" id="lname"  onblur="
if(document.myform.username.value=='' && document.myform.fname.value!='' && document.myform.lname.value!='') {
     var username = '';
     if(document.myform.lname.value.length >= 4) {
          username = document.myform.fname.value.substr(0,5) + document.myform.lname.value.substr(0,49);
     } else {
          username = document.myform.fname.value.substr(0,4) + document.myform.lname.value.substr(0,49);
     }
     username = username.replace(/\s+/g, '');
     username = username.replace(/\'+/g, '');
     username = username.replace(/-+/g, '');
     username = username.toLowerCase();
     document.myform.username.value = username;
     }" /></div><br>
 

<div><label for="username">Username: </label><input type="text" name="username" id="username" /></div><br>
<input type="hidden" name="length" value="6">
<table width="30%" border="0">
       <tr>
            <td>Password:</td>
            <td>
                <input name="row_password" type="text" size="40">&nbsp;
                <input type="button" class="button" value="Generate" onClick="generate();" tabindex="2">
            </td>
        </tr>
    </table>



<input type="submit" value="submit">
       

       
        </form>
        
</body>
    
</html>


<%-- 
    Document   : example
    Created on : Sep 12, 2018, 12:12:20 PM
    Author     : HAREESH KUMAR REDDY
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
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
       <form name="myform" method="post" action="userrandom_backend.jsp">
   
<div><label for="fname">First Name: </label><input type="text" name="fname"  id="fname" /></div>
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
}" /></div>
 

<div><label for="username">Username: </label><input type="text" name="username" id="username" /></div>
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
<input type="submit" value="submit" >
       
       </form>
        
     
    </body>
</html>


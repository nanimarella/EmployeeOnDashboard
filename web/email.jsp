<%-- 
    Document   : email
    Created on : Aug 28, 2018, 10:53:11 AM
    Author     : HAREESH KUMAR REDDY
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email sending</title>
       
    </head>
    <body>
    
        <h1>Email</h1>
        <form action="email_backend.jsp" method="post">
            <table>
                <tr><td>To:</td><td><input type="text" name="Tomail" style="height:20px;width:300px;"/></td></tr>
                <tr><td> sub:</td><td><input type="text" name="sub" style="height:20px;width:300px;"/></td></tr>
                <tr><td>Message:</td><td><textarea rows="15" cols="75" name="mess"></textarea></td></tr>
                <tr><td></td><td><input type="submit" name="submit" value="submit"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="reset"/></td></tr>
          </table>
        
       </form>
    </body>
</html>

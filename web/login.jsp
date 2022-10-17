<%-- 
    Document   : login
    Created on : Aug 22, 2018, 7:27:19 PM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
         <style>
            div{
                margin-right:500px;
                margin-left:500px;            
                 
            }
           body {
                background-image: url(j.jpg);
                background-repeat: no-repeat;
                background-size:2280px 1000px;
            }
            lable{
                font-size:20px;
   
            }
            input{
                width:100px;
            }
            form{
                margin: 20px;
            }
            
            </style>
            
    </head>
    <body>
       
        <div>
        <h1 style="text-align: center;">Login form</h1>
        <form action="logbackend.jsp" method="post" >
        
            <input type="text" name="uname" id="uname" placeholder="username" style="height:25px;width:300px;"><br><br>
            
            <input type="password" name="pwd" id="pwd" placeholder="password" style="height:25px;width:300px;"><br>
            <br>
            <input type="submit" name="login" value="login" onsubmit="return validation()">
        </form>
        Not Yet Registerd <a href="Registration.jsp">Click Here</a>
            </div>
    </body>
</html>
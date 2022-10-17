<%-- 
    Document   : SIGNUP
    Created on : Sep 6, 2018, 11:14:26 AM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Login</title>
    </head>
    <style>
        form{
           background: url(hr_1.jpg);
            text-align: center;
            height:100%;
             padding:5px;
             display:block;
             background-size: 2280px 1000px;
            }
 div.transbox {
  margin: 0px;
  background-color: #ffffff;

  opacity: 0.6;
  filter: alpha(opacity=60);
 
}

div.transbox p {
  margin: 10%;
  font-weight: bold;
  color: #000000;
}

.background{
   background: url(hr_1.jpg); 
   height:641px;
   background-size: cover;
}
</style>
    <body>
        <div class="background">
  <div class="transbox">
      <form action="admin-back.jsp" method="post">
        <h1>ADMIN LOGIN</h1>
        
         <input type="username" name="username"  placeholder="username" id="username" style="height:30px;width:200px;" ><br><br>
       <input type="password" name="password" placeholder="password" id="password" style="height:30px;width:200px;"><br><br>
          <input type="submit" name="submit" id="submit">
          
    </form>
        </div
            </div>
          </body>
</html>

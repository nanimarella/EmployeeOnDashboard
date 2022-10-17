<%-- 
    Document   : csvfile
    Created on : Aug 27, 2018, 3:35:03 PM
    Author     : HAREESH KUMAR REDDY
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-color: aqua;
       
        }
        </style>
    <body>
      
        <form action="csvfile" enctype="multipart/form-data" method="post">
<input name="file" type="file"> 
<input value="submit" type="submit">
</form>
    </body>
</html>

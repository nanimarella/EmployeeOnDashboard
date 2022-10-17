<%-- 
    Document   : welcome1
    Created on : Aug 27, 2018, 10:15:34 AM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome1</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       
    </head>
    <style>
        body{
            
         background: linear-gradient(to bottom, #33ccff 0%, #ffff99 100%);
}   
        h1{
            text-align: center;
            font-size: 100px;
            color: #bb0000;
        }
        dropdown{
                float: left;
                overflow: hidden;
            }
            .dropdown .dropbtn{
                border: none;
                 color: white;
                outline: none;
                min-width: 100px;
                margin: 0;
                
                 }
                 .dropdown-content{
                     display: none;
                     position: absolute;
                     background-color: red;
                     min-width: 100px;
                     font-size: 20px;
                     z-index: 1;
                 }
                 .dropdown-content a{
                     float:none;
                     color: white;
                     min-width: 100px;
                     text-decoration: none;
                     display:white;
                     text-align: left;
                     font-size: 40px;
                     
                 }
                 ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: white;
}

li {
    float: left;
}

li a {
    display: block;
    color: #ff0000;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color:#F5F5F5;
}
.active{
    background-color: green;
}
 div {
    font-style: oblique;
    }
    .container{
        font-size: 80px;
    }

    footer{
        text-align: center;
        font-size: 30px;
    }
            
        </style>
    <body>
         <h1>WELCOME</h1>
  
    <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="hrlogin.jsp">HR</a></li>
 
  <li><a href="Registration.jsp">EMPLOYEE</a></li>
</ul>
         <div class="container">
             <p> If you focus on Results,<br>
             you will never change,<br>
             If you focus on change,<br>
             you will  get Results</p>
             </div>



        <footer>
            <div class="footer" style="margin-top:80px;">
            
<p>Contact information: <a href="mailto:rkinfosystem@gmail.com">rkinfosystems@gmail.com</a>.</p>
</div>
             </footer>
        
        
           
       
    </body>
</html>

 <%-- 
    Document   : hrdashboard
    Created on : Aug 31, 2018, 10:58:00 AM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>dashboard</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       
        
       
    </head>
    <style>
        h1{
            text-align: center;
        }
        body{
            background-image: url(5.jpeg);
            background-repeat:no-repeat;
            
        }
        header{
            padding:100%;
        }
        ul a{
            list-style:none;
            text-decoration: none;
            font-size:30px;
            color:white;
        }        
        .sidenav {
    width: 200px;
    position: fixed;
    z-index: 1;
    top: 20px;
    left: 50px;
  
    overflow-x: hidden;
    padding: 10px 0;
}

.sidenav a {
    padding: 10%;
    text-decoration: none;
    font-size: 30px;
    color: white;
    display: block;
    
}

.sidenav a:hover {
    color: #064579;
}
        .dropbtn {
    background-color: #3498DB;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #2980B9;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 200px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}


.dropdown a:hover {background-color: #ddd;}

.show {display: block;}


            
           

        </style>
        
        
        
    <body>
        <h1>Employee On Board</h1>
        
        <div class="dropdown"i style="float:Right;">
<button onclick="myFunction()" class="dropbtn">
    <%=session.getAttribute("username")%></button>
  <div id="myDropdown" class="dropdown-content">
    <a href="logout.jsp">Logout</a>
    </div>
  
</div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
            
           
        <div class="sidenav">
        <ul>
            <a href="personaldata.jsp" class="personal data">personal data</a><br>
            <a href="functional.jsp" class="functionl data">functional data</a><br>
            <a href="perfun.jsp" class="view personal data">view personal data</a><br>
       <a href="fun.jsp" class="view functional data">view functional data</a><br>
      
        </ul>
        </div>

      </body>
</html>

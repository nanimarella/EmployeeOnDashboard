<%-- 
    Document   : personaldata
    Created on : Aug 23, 2018, 12:29:51 PM
    Author     : HAREESH KUMAR REDDY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>personal data</title>
    </head>
    <style>
        
        lable{
            font-size: 20px;
            font-weight: bolder;
        }
        body{
            background-image: url(j.jpg);
            background-repeat:no-repeat;
            background-size: 2280px 1000px;
        }
        div{
                margin-right:500px;
                margin-left:500px;
            }
        
        </style>
        <script>
            function validation()
            {
                 var fname=document.getElementById("fname").value;
                   var f="^[A-Za-z.]+$"
                  if(fname=="")
                   {
                       alert("please enter your fname");
                       return false;
                   }
                   if(!fname.match(f))
                   {
                       alert("Name Must Have alphabets only");
                       return false;
                   }
                   
                   var lname=document.getElementById("lname").value;
                   if(lname=="")
                   {
                       alert("please enter your lname");
                       return false;
                   }
                   if(!lname.match(f))
                       {
                       alert("Name Must Have alphabets only");
                       return false;
                   }
                   var dob=document.getElementById("dob").value;
                   if(dob=="")
                  {
                       alert("please enter your date of birth");
                       return false;
                   }
                    var email=document.getElementById("email").value;
                  var e= "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
                   if(email=="")
                   {
                       alert("please enter your email");
                       return false;
                   }
                   if(!email.match(e))
                       {
                       alert("please enter valid email");
                       return false;
                   }
                   
                   
                   var address=document.getElementById("address").value;
                  if(address=="")
                   {
                       alert("please enter your address");
                       return false;
                   }
                    var panno=document.getElementById("panno").value;
                   var pa="^[A-Z]{5}[0-9]{4}[A-Z]{1}"
                  if(panno=="")
                   {
                       alert("please enter your pan number");
                       return false;
                   }
                   if(!panno.match(pa))
                   {
                       alert("please enter valid pan number");
                       return false;
                   }
                   var phno=document.getElementById("phno").value;
                  var p="^(0/91)?[6-9][0-9]{9}"; 
                  if(phno=="")
                   {
                       alert("please enter your phno");
                       return false;
                   }
                   if(!phno.match(p))
                       {
                       alert("please enter valid number");
                       return false;
                   }
                   var dpt1=document.getElementById("dpt1").value;
                  if(dpt1=="")
                   {
                       alert("please enter your dependent1");
                       return false;
                   }
                   var dpt2=document.getElementById("dpt2").value;
                  if(dpt2=="")
                   {
                       alert("please enter your dependent2");
                       return false;
                   }
                   
        }
            
            </script>
    <body>
        <form action="perbackend.jsp" method="post" onsubmit="return validation()">
       <div>
            <h1>Personal Data</h1>
         
        <lable for="fname">
             First Name:-
             </lable>
    <input type="text" name="fname" id="fname" style="height:25px;width:350px;"><br><br>
    <lable for="lname">
             Last Name:-
    </lable>
    <input type="text" name="lname" id="lname" style="height:25px;width:350px;"><br><br>
    <lable for="dob">
             Date of Birth:-
             </lable>
    <input type="date" name="dob" id="dob" style="height:25px;width:350px;"><br><br>
    <lable for="email">
             Email Id:-
             </lable>
    <input type="text" name="email" id="email" style="height:25px;width:350px;"><br><br>
    <lable for="address">
             Address:-
             </lable>
    <input type="text" name="address" id="address" style="height:150px;width:350px"><br><br>
    <lable for="panno">
             Pan Number:-
             </lable>
    <input type="text" name="panno" id="panno" style="height:25px;width:350px;"><br><br>
    <lable for="phno">
             Phone Number:-
             </lable>
    <input type="text" name="phno" id="phno" style="height:25px;width:350px;"><br><br>
    <lable for="dpt1">
             Dependent1:-
             </lable>
    <input type="text" name="dpt1" id="dpt1" style="height:50px;width:350px;"><br><br>
    <lable for="dpt2">
             Dependent2:-
             </lable>
    <input type="text" name="dpt2" id="dpt2" style="height:50px;width:350px;"><br><br>
    <input type="submit" name="submit"value="submit" onclick="return validation()">
    <input type="button" name="Reset" value="Reset"  onclick="window.location.reload();">
       </div>
    </form>
 </body>
</html>

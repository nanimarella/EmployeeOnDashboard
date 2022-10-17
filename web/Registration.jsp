<%-- S
    Document   : Registration
    Created on : Aug 21, 2018, 4:24:08 PM
    Author     : HAREESH KUMAR REDDY
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration form</title>
    </head>
      <style>
            div{
                margin-right:500px;
                margin-left:500px;
            }
           body {
                background-image:url(j.jpg);
               background-repeat: no-repeat;
               background-size: 2280px 1000px;
            }
            h1{
                font-size: 35px;
            }
            label{
                font-size:25px;
                font-weight: bolder;
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
                   var uname=document.getElementById("uname").value;
                    var u="^[A-Za-z]+[0-9]+$";
                   if(uname=="")
                   {
                       alert("please enter your uname");
                       return false;
                   }
                   if(!uname.match(u))
                       {
                       alert("Name Must Have alpha-numerical only");
                       return false;
                   }
                       
                   var pwd=document.getElementById("pwd").value;
                   var p="^[A-Za-z0-9]+$";
                   if(pwd=="")
                   {
                       alert("please enter your pwd");
                       return false;
                   }
                   if(!pwd.match(p))
                       {
                       alert("Name Must Have lower and upper case letter only");
                       return false;
                   }
                   var cpwd=document.getElementById("cpwd").value;
                   if(cpwd=="")
                   {
                       alert("please enter your cpwd");
                       return false;
                   }
                    if(!cpwd.match(p))
                   {
                       alert("Name Must Have lower and upper case letter only");
                       return false;
                   }
                   if(pwd!=cpwd)
                {
                    alert("password doesn't match");
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
                   
                   if(document.getElementById("male").checked==false && document.getElementById("female").checked==false )
                   {
                       alert("please enter your gender");
                       return false;
                   }
                   var phno=document.getElementById("phno").value;
                  var p="(0/91)?[6-9][0-9]{9}"; 
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
                    var pannum=document.getElementById("pannum").value;
                   var pa="[A-Z]{5}[0-9]{4}[A-Z]{1}";
                  if(pannum=="")
                   {
                       alert("please enter your pan number");
                       return false;
                   }
                   if(!panum.match(pa))
                   {
                       alert("Name Must Have alphabets and numbers");
                       return false;
                   }
                   
               }
                </script>
            
    </head>
    <body>
        <div>
     <h1>Registration form</h1>
           <form action="regbackend.jsp" method="post" onsubmit="return validation()">
        <label for="fname">
            First Name:-
            </label><br>
        <input type="text" name="fname" id="fname" style="height:25px;width:300px;"><br>
       <br>
        <label for="lname">
            Last Name:-
            </label><br>
        <input type="text" name="lname" id="lname" style="height:25px;width:300px;"><br>
        <br>
        <label for="uname">
            User Name:-
            </label><br>
        <input type="text" name="uname" id="uname"style="height:25px;width:300px;"><br>
        <br>
        <label for="pwd">
            Password:-
            </label><br>
        <input type="password" name="pwd" id="pwd" style="height:25px;width:300px;"><br>
        <br>
        <label for="cpwd">
            Confirm password:-
         </label><br>
        <input type="password" name="cpwd" id="cpwd" style="height:25px;width:300px;"><br>
        <br>
        <label for="email">
            Email Id:-
            </label><br>
        <input type="email" name="email" id="email" style="height:25px;width:300px;"><br>
        <br>
        <label for="gender">
            Gender:-
            </label>
        <input type="radio" name="gender" id="male" value="male" style="size :20px">male
        <input type="radio" name="gender" id="female"  value="female" style="size:20px">female<br>
        <br>
        <label for="phno">
            Phone Number:-
            </label><br>
            <input type="text" name="phno" id="phno" style="height:25px;width:300px;">
            <label for="pan number">
                pan number:-
                </label><br>
                <input type="text" name="pannum" id="pannum" style="height: 25px;width:300px;"><br><br>
            <input type="submit" name="submit"value="submit" onclick="return validation()">
          </form>
            </div>
       
       </body>

</html>

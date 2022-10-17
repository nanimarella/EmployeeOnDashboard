<%-- 
    Document   : per
    Created on : Aug 29, 2018, 2:28:09 PM
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
         div{
                margin-right:500px;
                margin-left:500px;
            }
            body{
                background-color: aqua;
            }
        </style>
    <body>
        <%
            String id=request.getParameter("id");
             String fname=request.getParameter("f");
              String lname=request.getParameter("l");
              String email=request.getParameter("e");
             String dob=request.getParameter("d");
               String phno=request.getParameter("p");
            
        %>
        <div>
        <h1>functional data</h1>
        
        <form action="funbackend.jsp" method="post">
        <lable for="id">
            Employee ID:-
            </lable>
        <input type="text" name="id" id="id" value="<%=id%>" readonly style="height:25px;width:300px;"><br>
        <lable for="fname">
            First name:-
            </lable>
        <input type="text" name="fname" id="fname" value="<%=fname%>" readonly style="height:25px;width:300px;"><br>
        <lable for="lname">
          Last name:-
            </lable>
                 <input type="text" name="lname" id="lname" value="<%=lname%>" readonly style="height:25px;width:300px;"><br>
         <lable for="dob">
            Date of Birth:-
          </lable>
        <input type="date" name="dob" id="dob" value="<%=dob%>"  readonly style="height:25px;width:300px;"><br>
       <lable for="email">
            Email Id:-
          </lable>
        <input type="text" name="email" id="email" value="<%=email%>"  readonly style="height:25px;width:300px;"><br>
        <lable for="phno">
            Mobile number;
            </lable>
        <input type="text" name="phno" id="phno" value="<%=phno%>"  readonly style="height:25px;width:300px;"><br>
        <lable for="startingdate">
            Starting Date:-
            </lable>
        <input type="text" name="startingdate" style="height:25px;width:300px;"><br>
        <lable for="department">
            Department:-
            </lable>
        <input type="text" name="department" style="height:25px;width:300px;"><br>
        <lable for="location">
            Location:-
            </lable>
        <input type="text" name="location" style="height:25px;width:300px;"><br>
        <lable for="position">
            Position:-
            </lable> 
        <input type="text" name="position" style="height:25px;width:300px;"><br><br>
        <input type="submit" name="submit" value="submit">
        <button type="submit" for="Edit" value="cancel">Edit</button>
        </form>
        
       
        </div>
        
    </body>
</html>

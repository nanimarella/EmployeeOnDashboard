<%@page import="java.sql.*"%>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Text file</title>
      <script>
function download(filename, text) {
  var element = document.createElement('a');
  element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
  element.setAttribute('download', filename);

  element.style.display = 'none';
  document.body.appendChild(element);

  element.click();

  document.body.removeChild(element);
}
  </Script> </head>
  <style>
      form * {
  display: block;
  margin: 10px;
}
  </style>
  <body>
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
Update User Information
    </div>
     <div> 
              <form onsubmit="download(this['name'].value, this['text'].value)">
  <input type="text" name="name" value="test.txt">
  
             <%
     String Id=request.getParameter("Id");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi", "root", "root");
    Statement smt=con.createStatement();
    ResultSet rs=smt.executeQuery("select * from generate where id=30");
    while(rs.next())
     {
     %>  
     <textarea name="text" style="height: 100px;width: 300px;">

Id=<%=rs.getString(1)%>
First Name=<%=rs.getString(2)%>
Last Name=<%=rs.getString(3)%>
Email=<%=rs.getString(4)%>
Starting Date=<%=rs.getString(5)%>
Department=<%=rs.getString(6)%>
Position=<%=rs.getString(7)%>
Location=<%=rs.getString(8)%>
Username=<%=rs.getString(9)%>
Password=<%=rs.getString(10)%>
     </textarea>



   <input type="submit" value="download">
 <%
                }
  %> 
    </form>
    </div></div></div>
</section>
</section>
      </body>


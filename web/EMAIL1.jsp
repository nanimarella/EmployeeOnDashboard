<%@page import="java.sql.*"%>

<html>

    <head>

        <title>Sending Mail Through JSP</title>

        <meta http-equiv="Content-Type" content="text/h tml; charset=UTF-8">

        <meta name="viewport" content="width=device-width">
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
 

    <body bgcolor="white">
    <center>
        <form action="email_backend.jsp" style="padding-top: 40px">

            <table>

                <tr><td><b><font color="red">To:

                    </td>

                    <td><b><b><input type="text" name="Tomail" placeholder="Enter sender mail-id" style="width:580px"/><br/>

                    </td>
                    
                   
                </tr>

                 
                <tr>

                    <td>

                        <b><font color="red">Subject:

                    </td>

                    <td>

                        <input type="text" name="sub" placeholder="Enter Subject Line" style="width:580px"><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Message Text:

                    </td>

                    <td>
        
            
             <%
    
                                      Class.forName("com.mysql.jdbc.Driver");
                                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi", "root", "root");
                                      Statement smt=con.createStatement();
                                      ResultSet rs=smt.executeQuery("select * from generate ");
                                      while(rs.next())
                                      {
                                  %> 
                        <textarea rows="12" cols="80" name="mess">
                            
Dear [[HOD Name]]:

["<%=rs.getString(8) %>"] is joining on ["<%=rs.getString(5)%>"]. All the contractual
formalities have been completed. The systems have given access to 
["<%=rs.getString(2) %>"]. You may communicate the following email id and password for
accessing the further communication regard to application access.
 
Email id is ["<%=rs.getString(4)%>"]
Password is ["<%=rs.getString(10)%>"]

Sincerely,
HR Department

                        </textarea><br/>

                    </td>

                </tr>
              
                <th colspan="2">

                    <td>

                        <input type="submit" value="Send">

                    </td>

                    <td>

                        <input type="reset" value="Reset">

                    </td>

                </th>
  
            </table>
  <%
                }
  %>
        </form>

  <script>
    
</script> 
    

    </center>

    </body>

</html>
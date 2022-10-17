<%-- 
    Document   : logout
    Created on : Sep 6, 2018, 5:12:50 PM
    Author     : HAREESH KUMAR REDDY
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.setAttribute("username",null);
    session.invalidate();
    response.sendRedirect("welcome1.jsp");
    %>
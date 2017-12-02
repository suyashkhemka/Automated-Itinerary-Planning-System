<%-- 
    Document   : after_planning_form_days.jsp
    Created on : Oct 4, 2017, 1:15:29 PM
    Author     : minal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name=request.getParameter("name");
    String start_date=request.getParameter("start_date");
    String end_date=request.getParameter("end_date");
  
    response.sendRedirect("planning_form_days.jsp");  

%>
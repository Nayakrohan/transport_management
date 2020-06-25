<%-- 
    Document   : dij1
    Created on : 2 Apr, 2018, 9:45:41 PM
    Author     : admin
--%>
<%@page import="dij.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dij.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <% 
            int source=Integer.parseInt(request.getParameter("source"));
        int destination=Integer.parseInt(request.getParameter("destination"));
        int distance=Integer.parseInt(request.getParameter("distance"));
        int edges=(int)session.getAttribute("edges");
       
        %>
       <% 
         Graph.accept1(source,destination,distance); 
       %>
       
         <%
             int j=(int)session.getAttribute("j");
             j++; %>
         <% session.setAttribute("j",j);%>
         <c:redirect url="dij3.jsp"></c:redirect>
    </body>
</html>

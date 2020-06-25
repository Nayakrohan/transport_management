<%-- 
    Document   : dij
    Created on : 2 Apr, 2018, 12:05:19 PM
    Author     : admin
--%>
<%@page import="dij.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*" %>
        <%@page import="java.util.*" %>
        
        
        <% 
            int j=0;
            
            int nodes=Integer.parseInt(request.getParameter("nodes"));
            int edges=Integer.parseInt(request.getParameter("edges"));
            Graph.accept(nodes,edges);
            session.setAttribute("edges",edges);
            %>
 
            <c:redirect url="dij2.jsp"></c:redirect>
    
  
   
    </body>
</html>

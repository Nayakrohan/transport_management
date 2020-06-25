<%-- 
    Document   : dij3
    Created on : 4 Apr, 2018, 2:19:17 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           int j=(int)session.getAttribute("j");
            int edges=(int)session.getAttribute("edges");
        if(j<edges)
        {%>
        <c:redirect url="dij2.jsp"></c:redirect>
        <%}
else{%>
<c:redirect url="output.jsp"></c:redirect>
<% } %>
    </body>
</html>

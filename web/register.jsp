<%-- 
    Document   : register.jsp
    Created on : Mar 10, 2018, 12:02:56 AM
    Author     : Intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Operation</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        <%
        String name=request.getParameter("name");    
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        
        %>
         <c:if test="${empty param.name or empty param.email or empty param.pass}">
            <c:redirect url="register.html">
                <c:param  name="errmsg" value="Please enter all the fields"></c:param>
            </c:redirect>
        </c:if>
        <%
       Class.forName("com.mysql.jdbc.Driver");
       java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/vdetail","root","");
       Statement st=con.createStatement();
       ResultSet rs;
       int i=st.executeUpdate("insert into user values('"+name+"','"+email+"','"+pass+"')");
       
        %>
        <c:redirect url="register.html"></c:redirect>
    </body>
</html>

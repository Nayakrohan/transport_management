<%-- 
    Document   : edetail.jsp
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
        String phno=request.getParameter("phno");
        String dob=request.getParameter("dob");
        String doj=request.getParameter("doj");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        %>
         <c:if test="${empty param.name or empty param.phno or empty param.dob or empty param.doj or empty param.email or empty param.address}">
            <c:redirect url="edetail.html">
                <c:param  name="errmsg" value="Please enter all the fields"></c:param>
            </c:redirect>
        </c:if>
        <%
       Class.forName("com.mysql.jdbc.Driver");
       java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/vdetail","root","");
       Statement st=con.createStatement();
       ResultSet rs;
       int i=st.executeUpdate("insert into edetail values('"+name+"','"+phno+"','"+dob+"','"+doj+"','"+email+"','"+address+"')");
       
        %>
        <c:redirect url="edetail.html"></c:redirect>
    </body>
</html>

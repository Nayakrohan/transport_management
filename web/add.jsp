<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
 <head>
   <title>Vdetail</title>
   <link rel="stylesheet" type="text/css" href="vdetail.css">
 </head>
 <body background="truck.jpg">
      <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>

  <center>
  <h1>Vehicle Detail</h1>
  <form id="theform" action="add1.jsp" method="post"> 
  <p>
   <div class="row">
  <label>Vehicle No:</label>
  <input type="text" name="vno"><br><br>
  </div>
  <div class="row">
  <label>Manufacturer:</label>
  <select style="width: 165;" name="manu">
       <%
       Class.forName("com.mysql.jdbc.Driver");
       java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/vdetail","root","");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from vehicle");
       while(rs.next()){
       %>
       <option value="<%=rs.getString("manu")%>"><%=rs.getString("manu")%></option>
       <%}%>
  </select><br><br>
  </div>
  <div class="row">
  <label>Name:</label>
  <select style="width: 165;" name="name">
      <%
          ResultSet rs1=st.executeQuery("select * from vehicle");
  while(rs1.next()){
       %>
       <option value="<%=rs1.getString("name")%>"><%=rs1.getString("name")%></option>
       <%}%>
  </select>
<br><br>
  </div>
  <div class="row">
  <label>Type of truck:</label>
  <input type="text" name="type"><br><br>
  </div>
  <div class="row">
  <label>Cost of rent:</label>
  <input type="text" name="cost"><br><br>
  </div>
  <input type="submit" value="submit" name="submit">
  </p>
  </form>
  </center> 
 </body>
</html>
 
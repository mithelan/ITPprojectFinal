<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="Details.css">
</head>
<body>
<pre><h1 class="text">                            	         Stock Management System</pre></h1></br>


<ul>
<li><a href="Details.jsp">Get Well Soon</a></li>
  <li><a href="AddStocks.jsp">Add Stocks</a></li>
  <li><a href="Details.jsp">Stock Details</a></li>
  <li><a href="SendMail12.jsp">Request</a></li>
  <li><a href="DeleteStocks.jsp">Delete Stocks</a></li>
  <li><a href="pres.jsp">e-prescription</a></li>
  <li> <a href="LogoutServlet" >LogOut</a></li>
 
  
</ul>

<%
String id = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "ITP";
String username = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<div class="topnav">
<div class="search-container">
    <form action="PSearchServlet" method="get">
      <input type="text" placeholder="SEARCH STOCK" name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>
    </form>
</div></div>
</br> </br>

	<center><h2><font color="#02075d">STOCK DETAILS</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>SID</th>
                <th>STOCK NAME</th>
                <th>QUANTITY</th>
                <th>EXP-DATE</th>
                <th>SUPPLIER</th>
                <th>RECEIVED DATE</th>
                <th>SELECT</th>
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM stocks";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">

<td><%=resultSet.getString("sid") %></td>
<td><%=resultSet.getString("sname") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("expdate") %></td>
<td><%=resultSet.getString("supplier") %></td>
<td><%=resultSet.getString("redate") %></td>
<td>
<a href="update_pri.jsp?sid=<%=resultSet.getString("sid")%>" class="submit1">UPDATE</a></td>
		 
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

	
</body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>





<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #0000FF;
}
</style>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Navigation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="niroAdmin.css">

<title>Driver List</title>
</head>
<body>


<nav class="navbar navbar-inverse">
 <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"> HOME </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ambulance_payment.jsp">Payment</a></li>    
      <li><a href="driver_list.jsp">Driver Details</a></li>
      <li><a href="UserDetail.jsp">User Detail</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li>  <li> <a href="LogoutServlet" >LogOut</a></li></li>
    </ul>
  </div>
</nav>
<div class="contrainer">
<h3> </h3>
<p><P>
</div>


<pre><h1 class="text"> DRIVER DETAILS  </pre></h1></br>




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




	<center><h2><font color="#5EBADF">    ALL EMPLOYEES</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>EID</th>
                <th>FIRST-NAME</th>
                <th>PHONE NUMBER</th>
                <th>Ambulance-No</th>
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * from driver  ";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#5EBADF">

<td><%=resultSet.getString("did") %></td>
<td><%=resultSet.getString("drivername") %></td>
<td><%=resultSet.getString("PhoneNum") %></td>
<td><%=resultSet.getString("ambulanceNo") %></td>



		 
</tr>

<% 
}

} catch (Exception e) {
System.out.println();
}
%>
	



</body>
</html>
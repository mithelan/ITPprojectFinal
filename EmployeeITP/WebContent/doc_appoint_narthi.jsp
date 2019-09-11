<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.searchDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointments</title>
<link rel="stylesheet" type="text/css" href="doc_appoint.narthi.css">
<script>
function validateForm() {
  var x = document.forms["myForm"]["dd"].value;
  if (x == "") {
    alert("Please enter the date");
    return false;
  }
}
</script>
<style>
	button {
	background-color: #3f397d;
	color: white;
	padding: 10px 16px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>


<body>


<pre><h1 class="text">                                     Finance Management System</pre></h1>
<form action="searchDate" method="post" name="myForm" onsubmit="return validateForm()">
<h2>Doctor name: </h2>
<h2>Date: 
<input type="text" name="dd">  <input type="submit" value="Show"></h2>


</form>
<a href="patients.jsp">Patient Details</a> <br><br><br>
<hr>

  	<%
  
String id = request.getParameter("date");
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
  	
	
  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String date = request.getParameter("dd");
String sql ="SELECT * from appoint where date = '"+date+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>



<form action="doc_record.jsp" method="post">

<p style="font-size:20px">Appointment Time:<%=resultSet.getString("time") %> </p> 
<p style="font-size:20px">Patient ID: <%=resultSet.getString("PatientID") %> </p>

<button value="<%=resultSet.getString("PatientID") %>" name="ppid">View</button>
</form>
<br>

<form action="NarthiDeleteServlet" method="post">
<button value="<%=resultSet.getString("AppId") %>" name="delete">Delete</button>
<hr>
</form>
<br>
<br>	
<%
	}
%>

<% 


} catch (Exception e) {
e.printStackTrace();
}
%>
 




	
</body>
</html>
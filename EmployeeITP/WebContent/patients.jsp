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
<title>Online Clinic Management</title>
<link rel="stylesheet" type="text/css" href="patients.css">
</head>
<body>

	
<pre><h1 class="text">                                     Finance Management System</pre></h1>

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

String sql ="SELECT * from appoint a, patient_reg p where a.PatientID = p.PID";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
	
	
	<form action="individual.jsp" method="post">
	<p>Appointment ID: <%=resultSet.getString("AppId") %> <br>
	Patient Name: <%=resultSet.getString("lastname") %> <%=resultSet.getString("firstname") %> <br></p>
	<button name="indi" value="<%=resultSet.getString("p.PID") %>">View Details</button>
	</form>

<%
	}


} catch (Exception e) {
e.printStackTrace();
}
%>




  
	

</body>
</html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Patient"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="stylesheet.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
  
String id = request.getParameter("patid");
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

String sql ="SELECT * from nrecords where patientId='"+id+"' ";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>








<p>Patient ID: <%=resultSet.getString("PID") %> <br>
	Current Medical Details: <%=resultSet.getString("other") %>
	Prescription:<%=resultSet.getString("medicine1") %> <br><br>
	<%=resultSet.getString("medicine2") %> <br><br>
	<%=resultSet.getString("medicine3") %> <br><br>
	<%=resultSet.getString("medicine4") %> <br><br>
	<%=resultSet.getString("medicine5") %> <br><br>
	Previous Medical Details:<%=resultSet.getString("history") %> <br><br>
</p>
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
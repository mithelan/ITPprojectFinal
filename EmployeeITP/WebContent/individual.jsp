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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="individual.css">
</head>
<body>

<pre><h1 class="text">                                     Finance Management System</pre></h1>




<%
  
String id = request.getParameter("indi");
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
ResultSet resultSet2 = null;
%>
  	
	
  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String date = request.getParameter("dd");
String sql ="SELECT * from patient_reg p, nrecords n where p.PID = '"+id+"' and p.PID = n.patientID";



resultSet = statement.executeQuery(sql);



 
while(resultSet.next()){
%>
	
	
	
  1. Patient ID: <%=resultSet.getString("PID")%> <br>
  2. Patient Name:<%=resultSet.getString("firstname") %> <%=resultSet.getString("lastname") %> <br>
  3. Age: <%=resultSet.getString("age") %> <br>
  4. Gender:  <%=resultSet.getString("gender") %> <br> 
  5. Blood Group: <%=resultSet.getString("bloodGroup") %> <br>
  6. Contact Number:  <%=resultSet.getString("mobileNo") %> <br>
  <h3>Previous Medical History:  </h3> <%=resultSet.getString("history") %> 
  <h3>Current Medical Record: </h3> <%=resultSet.getString("other") %> 
<h3>E-Presciption: </h3> <%=resultSet.getString("medicine1") %> <br> <%=resultSet.getString("medicine2") %> <br><%=resultSet.getString("medicine3") %> <br> <%=resultSet.getString("medicine4") %> <br> <%=resultSet.getString("medicine5") %>

<%
	}


} catch (Exception e) {
e.printStackTrace();
}
%>



</body>
</html>
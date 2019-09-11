<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
         <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
 <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/bootstrap.css">
   <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css/ShowSalaryStatus.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<a href="SalaryFinance.jsp">Back</a>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "ITP";
String userId = "root";
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
<div class="Arrange">
		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			 <table class="table table-bordered table-striped mb-0">
			    <thead>
 
 
 
					<tr bgcolor="#7474BF">
					
					<th >EID</th>
					
					<th >First Name</th>
					<th >Salary Status</th>
					
					</tr> </thead>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="Select e.EID,e.firstname,s.status from employee e,SalaryPayment s where e.EID=s.Salary_id";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >
<td><%=resultSet.getString("EID") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("status") %></td>



</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
<form action="UpdateStatus" method="post">

 Enter the Eid: 
 <br>
 <input type="number"  name="eid" ><br>
 <div class="status">
 Select Status :
 <select name="Status" class="select-css">
   
    <option value="Paid">Paid</option>
    <option value="Not yet paid">Not yet paid</option>
<br> <br>
  
</select></div>
<button class="button"><span>Update Status</span></button>



</form>










</body>
</html>
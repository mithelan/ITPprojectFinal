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
<link rel="stylesheet" href="css/Totalincome.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
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


<h1 class="text">Income</h1>

<ul>
 <li> <a class="active" href="payment.jsp">Home</a></li>
  <li>  <a href="#History">Income and Expenses</a></li>
 <li>   <a  href="SuppilerFinance.jsp">Supplier</a></li>
  <li>  <a href="SalaryFinance.jsp">Salary</a></li>
  <li>  <a href="#Report">Report</a>
  
  </ul>



  <form action="TotalIncomesearch.jsp" method="post">


 
 <div class="bod">
 
 	<div class="searchn">
 	<h5>Enter the date</h5>
		<input type="date" name="startdate" id="myDate" >

          <input type="date" name="endate" id="myDate1" >
    <button class="button"><span>Search</span></button>
	
	</div>
	
	
</form>	
	 <div class="Arrange">
  <h7>Below table shows the Income from the Appointments,yet to be confirmed</h7><br>
  
		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			 <table class="table table-bordered table-striped mb-0">
			    <thead>
 
 
 
					<tr bgcolor="#7474BF">
					
					
					
					<th >Date</th>
					<th >NIC</th>
					<th >Phone Number</th>
					<th >Amount</th>
					</tr> </thead>


  
 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql ="SELECT a.date,p.nic,p.phone FROM appoint a,payment p where a.AppId=p.payid";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >

<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("nic") %></td>
<td><%=resultSet.getString("phone") %></td>
<td>1500/=</td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
  
  


</table>
</div>
</div> 


     

 

</body>
</html>
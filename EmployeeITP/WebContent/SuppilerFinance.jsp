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
<link rel="stylesheet" href="css/SuppilerFinance.css">
</head>
<body>
<style>

.bod{
  
   
  width: 600px;
  border: 2px solid black;
  padding: 115px;
  margin: 20px;
  position:absolute;
  left:170px;
  top:187px;
  background:white;
}




</style>

<h1 class="text">Supplier Payment</h1>


<ul>
 <li>   <a href="payment.jsp">Home</a></li>
  <li>  <a href="Income&Expenses.jsp">Income and Expenses</a></li>
  <li>   <a class="active"  href="#Supplier" href="SuppilerFinance.jsp">Supplier</a></li>
  <li>  <a href="#Salary"  href="SalaryFinance.jsp">Salary</a></li>
  <li>  <a href="#Report">Report</a>
  
  </ul>
<form action= "SuppilerFinance.jsp">
  <p>Enter Id</p>
<input type="text" name="id" class="advancedSearchTextBox" />
<br> <br>   

 <button class="button"><span>Check</span></button>

</form>



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

		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			 <table class="table table-bordered table-striped mb-0">
			    <thead>
 
 
 
					<tr bgcolor="#7474BF">
					
					<th>ID</th>
					<th >Product</th>
					<th >Unit Price</th>
						<th >Quantity</th>
					
					</tr> </thead>
					
					

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="Select id,product,unitprice,quantity from prof where id='"+request.getParameter("id")+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("unitprice") %></td>
<td><%=resultSet.getString("quantity") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
					</div>
					
					
					<form action="SupplierAkshi">
					
					  <p>Enter Id</p>
<input type="text" name="id1" class="advancedSearchTextBox" />
<br> <br> 
Select Status :
 <select name="Status" class="select-css">
   
    <option value="Paid">Paid</option>
    <option value="Not yet paid">Not yet paid</option>
<br> <br>
  
</select>

<button class="Send"><span>Check</span></button>
</form>
</body>
</html>
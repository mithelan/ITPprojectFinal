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
<link rel="stylesheet" href="css/payment.css">
 <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/bootstrap.css">
   <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
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

<pre><h1 class="text">                       Finance Management System</pre></h1>




<div class="logout">

	<a href="LogoutServlet" >LogOut</a>

</div>






<ul class="c">
 <li> <a class="active" href="payment.jsp">Home</a></li>
  <li>  <a href="Income&Expenses.jsp">Expenses History</a></li>
 <li>   <a  href="SuppilerFinance.jsp">Supplier</a></li>
  <li>  <a href="SalaryFinance.jsp">Salary History</a></li>
  <li>  <a href="#Report">Report</a>
  
  </ul>
  
<div class="incomecost">


</div>
 	




<div class="cardarrange1">
<div class="card" style="width: 20rem;">
  <img src="" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Pay the Utility Payment </h5>
    <p class="card-text">Pay the monthly payment before 30th of each month. </p>
    <a href="Utility.jsp" class="btn btn-primary">Pay Utility</a>
  </div>
</div>
</div>


<div class="cardarrange">
<div class="card" style="width: 20rem;">
  <img src="" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Check the Income </h5>
    <p class="card-text">Checking the income from the appointments</p>
    <a href="TotalIncome.jsp" class="btn btn-primary">Check the income</a>
  </div>
</div>
</div>

<div class="cardarrange2">
<div class="card" style="width: 20rem;">
  <img src="" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Paying the Suppliers Stock </h5>
    <p class="card-text">Pay the necessary amount when Supplier emails you.</p>
    <a href="SuppilerFinance.jsp" class="btn btn-primary">Supplier</a>
  </div>
</div>
</div>



<div class="cardarrange3">
<div class="card" style="width: 20rem;">
  <img src="" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Employee's Salary Status </h5>
    <p class="card-text">Once after deposited the salary to the employees change the status.S</p>
    <a href="ShowSalaryStatus.jsp" class="btn btn-primary">Salary Status</a>
  </div>
</div>
</div>


</body>
</html>
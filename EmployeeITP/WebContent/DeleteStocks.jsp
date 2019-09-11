<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Delete.css">

</head>
<body>

<pre><h1 class="text">                            	         Stock Management System</pre></h1></br>


<ul>
<li><a href="xxx">Get Well Soon</a></li>
  <li><a href="http://localhost:8181/Stocks/AddStocks.jsp">Add Stocks</a></li>
  <li><a href="http://localhost:8181/Stocks/Details.jsp">Stock Details</a></li>
  <li><a href="http://localhost:8181/Stocks/SendMail12.jsp">Request</a></li>
   <li><a href="http://localhost:8181/Stocks/DeleteStocks.jsp">Delete Stocks</a></li>
  <li><a href="http://localhost:8181/Stocks/pres.jsp">e-prescription</a></li>
  <li><a href="xxx">logout</a></li>
</ul>
<div class="bod">
<center><h2><font color="#02075d"><div class="deletet"> DELETE STOCK</div></font></h2></center>
  <div class="search-container">
    <form method="POST" action="DeleteServlet_Pri">
     <input type="text" id="sid" name="sid" placeholder="Enter Stock ID ...." >
      <input type="submit" class="submit" value="Delete" >
    </form>
  </div>
</div>
<div style="padding-left:20px">
  
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Navigation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Nav.css">
  
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#MaddyHome.jsp">Get well soon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="">Home</a></li>    
      <li><a href="Appoint.jsp">Booking</a></li>
      <li><a href="feedback.jsp">Feedback</a></li>
      <li><a href="news2.jsp">News</a></li>
      <li><a href="index.jsp">Otp</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li> <li> <a href="LogoutServlet" >LogOut</a></li> Logout</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Admin Control</h3>
  <p></p>
  
  <div class="row">
	<div class="column">	
	<div class="div1"><u>Transportation Manager</u><br><br>
	<form name="myForm" onsubmit="return validateForm()" method="post"> 
	</select><br><br>
		<img src="trnsmgr.png" alt="transport">
	<br>
	<br>
	<input type="submit" class="submit" value="View now"></p></b> 
	
	
	</form>
	</div>
	</div>
	
	
	<div class="column">
	<div class="div2"><u>Finance Manager</u><br><br>
	<form name="myForm"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="finmgr.jpg" alt="Flowers in Chania">
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	
	<div class="column">
	<div class="div3"><u>Stock Manager</u><br><br>
	<form name="myForm"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="pharm2.jpg" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	
	<div class="column">
	<div class="div4"><u>Employee Manager</u><br><br>
	<form name="myForm"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="empmgr.jpg" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>

<br>
	<br>
	<br>
	<br>

<div class="column">
	<div class="div5"><u>Record Manager</u><br><br>
	<form name="myForm"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="docs2.jpg" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	
	<div class="column">
	<div class="div6"><u>Supplier Manager</u><br><br>
	<form name="myForm"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="supmgr.png" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" a href="Supplier_Manager.jsp"  class="submit" value="View now"></a>

	
	</form>
	</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	
	<div class="column">
	<div class="div7"><u>Patient Manager</u><br><br>
	<form name="myForm"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
	<img src="patmgr.png" alt="Flowers in Chania">
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	
	</div>
</div>




</body>
</html>
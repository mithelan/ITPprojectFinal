<%@page import="java.util.Iterator"%>
<%@page import="model.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="service.NRead_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<script> 
function onvalidate()
{ 
 var uname = document.form.uname.value;
 var fname = document.form.fname.value;
 var email = document.form.email.value; 
 var pass = document.form.pass.value;
 var conpass = document.form.conpass.value;
 var ans= document.form.ans.value;
 
 if (uname==null || uname=="")
 { 
 alert("User Name can't be blank"); 
 return false; 
 }
 else if (fname==null || fname=="")
 { 
 alert("Full Name can't be blank"); 
 return false; 
 }
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if(pass.length<6)
 { 
 alert("Password must be at least 6 characters long."); 
 return false; 
 } 
 else if (pass!=conpass)
 { 
 alert("Confirm Password should match with the Password"); 
 return false; 
 }
 else if (ans==null || ans=="")
 {
 alert("Answer can't be blank"); 
 return false; 
 } 
 } 
</script> 




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Ambulance Booking</title>
</head>
<body>




<center>
<h1>Booking Details</h1>

<div class="container">

<form action="controller/Ninsert_controller.jsp" onsubmit="return  onvalidate()" >

 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="sl_no" type="text" class="form-control" name="sl_no" placeholder="NIC" required>
    </div>
<br><br>

<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="user_name" type="text" class="form-control" name="user_name" placeholder="User Name" required>
    </div>
<br><br>   

<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="mobile" type="text" class="form-control" name="mobile" placeholder="Mobile Number" required>
    </div>
<br><br>


 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email" required>
    </div>
<br><br>

<input type="submit" class="btn btn-info" value="NEXT">



 

</div>
</form>


</center>

</body>
</html>
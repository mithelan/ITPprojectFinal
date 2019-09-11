<%@page import="java.util.Iterator"%>
<%@page import="model.Patient"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="stylesheet.css">
<meta charset="ISO-8859-1">
<title>Patient register</title>
<style type="text/css">

</style>
</head>
<body>


<center>
<h1> User Register</h1>
 

<form name="myForm" onsubmit="return validateForm()" action="controller/insert_controller.jsp" >
    


<pre>
<h3>
First Name:                <input type="text" name="firstname"><br><br>
Last Name:                 <input type="text" name="lastname"><br><br>
E-mail:                    <input type="email" name="email" ><br><br>
Address:                   <input type="text" name="address"><br><br>
Mobile Number:             <input type="text" name="mobileno" pattern='^\+?\d{0,10}'
                                                          title='Phone Number (Format: 099(99)99999)'><br><br>
Gender:                    <input type="text" name="gender"><br><br>
Blood Group:               <input type="text" name="bloodgroup"><br><br>
Age:                       <input type="text" name="age" onkeypress="return isNumberKey(event)" required><br><br>
</h3>
<h2>User Login Details</h2>

<h3>
User Name:                 <input type="text" name="uname"><br><br>
Password:                  <input type="password" name="pass" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"
title="Please include at least 1 uppercase character, 1 lowercase character, and
1 number." ><br><br>
Confirm Password:          <input type="password" name="confirm"><br><br> 
</h3>
</pre>


<pre>
<a href="patient_log.jsp"><input type="submit" value="Insert"></a>    <br>
</pre>

<script type="text/javascript">
    
    		function validateForm(){
                    
   var firstName = document.forms["myForm"]["firstname"].value
   var lastName=document.forms["myForm"]["lastname"].value
   var Email=document.forms["myForm"]["email"].value
   var Address=document.forms["myForm"]["address"].value
   var MobileNumber=document.forms["myForm"]["mobileno"].value
   var Gender=document.forms["myForm"]["gender"].value
   var BloodGroup=document.forms["myForm"]["bloodgroup"].value
   var Age=document.forms["myForm"]["age"].value
   var pass=document.forms["myForm"]["pass"].value
   var copass=document.forms["myForm"]["confirm"].value
   


    if (firstName == ""||lastName ==""||MobileNumber ==""||Email==""||Address==""||BloodGroup==""||Gender==""||Age=="") {
        alert("All Fields must be filled out");
        return false;
    }	

   if(pass!=copass){
		alert("Dismatch Password.Re-Enter");
		return false;
   
 }
   
   
    		}
    
</script>
</form>



</center>
</body>
</html>
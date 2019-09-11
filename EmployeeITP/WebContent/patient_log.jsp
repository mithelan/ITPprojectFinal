
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.Read_Values"%>
<%@page import="model.Patient"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="stylesheet.css">
<meta charset="ISO-8859-1">
<title>Patient login</title>

</head>
<body>

<body>
<div id="app" class="app">
<div class="left">
 <div class="login">
			<h1>CLINIC</h1>



<p class="round2"></p>


<input ID="uname"  type="text" name="uname" placeholder="username" required><br>
<input ID="pass"	type="password" name="pass" placeholder="password" required><br>
	<a target="_blank" href="" onclick="this.href='patient_pro.jsp?pass='+document.getElementById('pass').value" >LOGIN</a><br><br>					   
<a	href="index2.jsp">Forgot Password?</a></br><br>
<a href="patient_reg.jsp">Create an account?</a></br><br>
				</div>

<span style="color: red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>


</body>
</html>
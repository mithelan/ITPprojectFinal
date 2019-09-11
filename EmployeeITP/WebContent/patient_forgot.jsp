
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.Forgot_values"%>

<%@page import="service.Updatepass_values"%>
<%@page import="model.Patient"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="stylesheet.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 E-mail:<br>
<input ID="email" type="text" name="email"><br>


<a target="_blank" href="" onclick="this.href='patient_forgot.jsp?email='+document.getElementById('email').value" >ENTER</a>
<hr>



 <%
	String userID=(String)request.getParameter("userID");
	
	
 Updatepass_values obj_Updatepass_values=new Updatepass_values();
	
	Patient obj_Patient=obj_Updatepass_values.get_value_of_user(userID);
	
	%>


<center>

<h1>Change Your Password </h1>


<form name="myForm" action="controller/forgot_controller.jsp">


Enter Your New Password :
<input id="idpass" type="text" name="pass" value="<%=obj_Patient.getPass()%>"><br>
<br>





<a	href="patient_log.jsp"><input type="submit" value="Edit"></a>

</form>
</center>

</body>
</html>
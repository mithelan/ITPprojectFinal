
<%@page import="service.Edit_values"%>
<%@page import="model.Patient"%>
<%@page import="service.Updatepass_values"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String pass=request.getParameter("pass");



Patient obj_Patient=new Patient();
obj_Patient.setPass(pass);

 

Updatepass_values obj_Updatepass_values=new Updatepass_values();

obj_Updatepass_values.edit_user(obj_Patient);
 

%>
<script type="text/javascript">

 window.location.href="http://localhost:8080/EmployeeITP/patient_forgot.jsp"
</script>



</body>
</html>
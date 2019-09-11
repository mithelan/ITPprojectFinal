
<%@page import="service.Insert_values"%>


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
  
String firstName=request.getParameter("firstname");
String lastName=request.getParameter("lastname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String mobileNo=request.getParameter("mobileno");
String gender=request.getParameter("gender");
String bloodGroup=request.getParameter("bloodgroup");
String age=request.getParameter("age");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

 
Insert_values obj_Insert_Valuess=new Insert_values();

obj_Insert_Valuess.insert_values(firstName,lastName, email, address, mobileNo,gender,bloodGroup,age,uname,pass);


%>



<script type="text/javascript">

 window.location.href="http://localhost:8080/EmployeeITP/patient_log.jsp"
</script>



</body>
</html>
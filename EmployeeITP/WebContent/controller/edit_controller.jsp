
<%@page import="service.Edit_values"%>
<%@page import="model.Patient"%>
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
String userID=request.getParameter("userID");
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String email=request.getParameter("email");
String address=request.getParameter("address");
String mobileNo=request.getParameter("mobileNo");
String gender=request.getParameter("gender");
String bloodGroup=request.getParameter("bloodGroup");
String age=request.getParameter("age");


Patient obj_Patient=new Patient();
obj_Patient.setUserID(userID);
obj_Patient.setfirstName(firstName);
obj_Patient.setLastName(lastName);
obj_Patient.setemail(email);
obj_Patient.setaddress(address);
obj_Patient.setMobileNumber(mobileNo);
obj_Patient.setGender(gender);
obj_Patient.setbloodGroup(bloodGroup);
obj_Patient.setAge(age);
 

Edit_values obj_Edit_values=new Edit_values();

obj_Edit_values.edit_user(obj_Patient);
 

%>
<script type="text/javascript">

 window.location.href="http://localhost:8080/EmployeeITP/patient_log.jsp"
</script>


</body>
</html>
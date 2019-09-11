
<%@page import="service.Delete_values"%>
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
 

Delete_values obj_Delete_values=new Delete_values();

obj_Delete_values.delete_value(userID);
 

%>


<script type="text/javascript">

 window.location.href="http://localhost:8080/EmployeeITP/patient_log.jsp"
</script>


</body>
</html>
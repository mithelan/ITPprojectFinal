<%@page import="service.NDelete_values"%>
<%@page import="service.Edit_values"%>
<%@page import="model.User_Bean"%>
<%@page import="service.NInsert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String sl_no=request.getParameter("sl_no");

NDelete_values obj_Delete_values= new NDelete_values();
obj_Delete_values.delete_value(sl_no);

%>
<script type="text/javascript">

window.location.href="http://localhost:8080/EmployeeITP/retrive.jsp"

</script>


</body>
</html>
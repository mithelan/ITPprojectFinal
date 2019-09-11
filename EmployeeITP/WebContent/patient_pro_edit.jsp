
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.Read_Values"%>
<%@page import="service.Edit_values"%>
<%@page import="model.Patient"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="stylesheet.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
$(document).ready(function(){
 nullvalidation();
});
</script>
</head>
<body>


 <%
	String userID=(String)request.getParameter("userID");
	
	
	Edit_values obj_Edit_values=new Edit_values();
	
    Patient obj_Patient=obj_Edit_values.get_value_of_user(userID);
	
	%>


<center>

<h1>Edit Your Profile </h1>


<form name="myForm" onsubmit="return nullvalidation()" action="controller/edit_controller.jsp">


User Id :
<input id="iduserID" type="text" name="userID" value="<%=obj_Patient.getUserID()%>"><br>
<br>

First Name:
<input id="idfirstName" type="text" name="firstName" value="<%=obj_Patient.getfirstName()%>"><br>
<br>

Last Name:
<input id="idlastName" type="text" name="lastName" value="<%=obj_Patient.getLastName()%>"><br>
<br>
E-mail:
<input id="idemail" type="text" name="email" value="<%=obj_Patient.getemail()%>"><br>
<br>
Address:
<input id="idaddress" type="text" name="address" value="<%=obj_Patient.getaddress()%>"><br>
<br>
Mobile Number:
<input id="idmobileNo" type="text" name="mobileNo" value="<%=obj_Patient.getMobileNumber()%>"><br>
<br>
Gender:
<input id="idgender" type="text" name="gender" value="<%=obj_Patient.getGender()%>"><br>
<br>
Blood Group:
<input id="idbloodGroup" type="text" name="bloodGroup" value="<%=obj_Patient.getbloodGroup()%>"><br>
<br>
Age:
<input id="idage" type="text" name="age" value="<%=obj_Patient.getAge()%>"><br>
<br>



<button type="submit" >edit</button>

</form>
</center>

<script>
    function nullvalidation() {
  if ($("#iduserID").val() === "null") {
        //alert('Enter First Name');
        $("#iduserID").val("");
     }
      if ($("#idfirstName").val() === "null") {
        //alert('Enter First Name');
        $("#idfirstName").val("");
     }
      if ($("#idlastName").val() === "null") {
        //alert('Enter First Name');
        $("#idlastName").val("");
     }
      if ($("#idemail").val() === "null") {
        //alert('Enter First Name');
        $("#idemail").val("");
     }
      if ($("#idaddress").val() === "null") {
        //alert('Enter First Name');
        $("#idaddress").val("");
     }
     if ($("#idmobileNo").val() === "null") {
        //alert('Enter First Name');
        $("#idmobileNo").val("");
     }
     if ($("#idgender").val() === "null") {
         //alert('Enter First Name');
         $("#idgender").val("");
      }
     if ($("#idbloodGroup").val() === "null") {
         //alert('Enter First Name');
         $("#idbloodGroup").val("");
      }
     if ($("#idage").val() === "null") {
         //alert('Enter First Name');
         $("#idage").val("");
      }
     
}
   </script>

</body>
</html>
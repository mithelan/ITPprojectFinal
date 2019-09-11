
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.Read_Values"%>
<%@page import="service.Edit_values"%>
<%@page import="model.Patient"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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

 <li> <a href="LogoutServlet" >LogOut</a></li>


<%
Read_Values obj_Read_Values=new Read_Values();
String pass=(String)request.getParameter("pass");

List<Patient> list=obj_Read_Values.get_values(pass);

 


Iterator<Patient> it_list=list.iterator();
%>



    
<%
while(it_list.hasNext()){
	Patient obj_de=new Patient();
	obj_de=it_list.next();
	
	
%>

<form action="patient_pro" method="post">

<h1> PROFILE</h1><br><br>
			           User ID:        <%=obj_de.getUserID() %><br><br>
					    First Name:    <%=obj_de.getfirstName() %><br><br>
                        Last Name:     <%=obj_de.getLastName() %><br><br>
                        E-mail:        <%=obj_de.getemail() %><br><br>
                        Address:       <%=obj_de.getaddress() %><br><br>
                        Mobile Number: <%=obj_de.getMobileNumber() %><br><br>
                        Gender:        <%=obj_de.getGender() %><br><br>
                        Blood Group:   <%=obj_de.getbloodGroup() %><br><br>
                        Age:           <%=obj_de.getAge() %><br><br>
                        
                                        
					<a href="patient_pro_edit.jsp?userID=<%=obj_de.getUserID()%>">Edit</a><br><br>
					
						
					
					<a href="controller/delete_controller.jsp?userID=<%=obj_de.getUserID()%>">Delete</a>
					
					<a href="patient_history.jsp" value="<%=obj_de.getUserID() %>" name="patid">Show History</a>	
                                       
			
		</form>
<%	 
}
%>




</body>
</html>
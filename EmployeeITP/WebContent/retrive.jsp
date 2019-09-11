<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.NRead_Values"%>
<%@page import="model.User_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel = "stylesheet"
   type = "text/css"
   href = "tableList.css" />
<title>Insert title here</title>
</head>
<body>

		


<hr>

<%

  NRead_Values obj_Read_Values= new NRead_Values();

  List<User_Bean> list=obj_Read_Values.get_values();

  
  Iterator<User_Bean> it_list= list.iterator();
  %>  
  

  
  <% 
  while(it_list.hasNext()){
	  User_Bean obj_User_Bean= new User_Bean();
	  obj_User_Bean=it_list.next();
	  %>  
	  
	  
	  			<div class="container">
	    	<img src="amb1.jpg" alt="Avatar" style="width:90px">
	 	 <p><span>NIC: <%=obj_User_Bean.getSl_no() %>  </span> Name: <%=obj_User_Bean.getUser_name() %> </p><br>
	  <p>Email: <%=obj_User_Bean.getEmail() %> </p><br>
	   	<p><span>Contact Number:<%=obj_User_Bean.getMobile() %></span> </p>
	  
	  
	  
	
	 
	  <a href ="edit.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>"><input type="submit" class="btn btn-info" value="EDIT REQUEST">
	   </a>
	 
	  <a href ="controller/Ndelete_controller.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>"><input type="submit" class="btn btn-info" value="DELETE REQUEST"> </a>
	
	  
	 </div>
	  
<%	  
  }
  %>
  
<a href="insert_values.jsp"><button type="button" class="add-button">Add New Booking!</button></a> <br><br>

 
<a href="driver.jsp"><button type="button" class="add-button">Request Driver</button></a>



<a href="ambulance_payment.jsp"></a>  

<a href="UserDetail.jsp"></a> 
<a href="SendSms.jsp"></a> 



 

</body>
</html>
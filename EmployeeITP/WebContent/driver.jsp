<%@page import="model.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="service.NRead_Values"%>
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
	  
	  
	  			<div class="container" >
	    	<img src="men1.jpg" alt="Avatar" style="width:100px">
	 	 <p><span>NIC: <%=obj_User_Bean.getSl_no() %>  </span> Name: <%=obj_User_Bean.getUser_name() %> </p><br>
	
	   	<p><span>Contact Number:<%=obj_User_Bean.getMobile() %></span> </p>
	  
	  
	  <br><br>
	
	 
	 <form method="post" action="SendSms.jsp">


 <h3>Enter Pickup Address and Re-enter the Mobile Number:<br></h3>
<input type="text" id="label1" name="message">
<br><br>

<h3>
Driver Mobile Number:<br></h3>
<input type="text" name="phone" value="94763808824" >

<br><br>
<input type="submit" name="save" value="submit">
</form>
	 
	 
	 
	
	  
	 </div>
	  
<%	  
  }
  %>




</body>
</html>


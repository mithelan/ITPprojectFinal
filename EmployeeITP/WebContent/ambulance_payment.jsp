<%@page import="service.NRead_Values"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.User_Bean"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>





<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Navigation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel = "stylesheet"
   type = "text/css"
   href = "tableList.css" />
   
   <link rel="stylesheet" href="niroAdmin.css">

<title>Payment</title>
</head>
<body>
<nav class="navbar navbar-inverse">
 <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">HOME</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ambulance_payment.jsp">Payment</a></li>    
      <li><a href="driver_list.jsp">Driver Details</a></li>
      <li><a href="UserDetail.jsp">User Details</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<div class="contrainer">
<h3> </h3>
<p><P>
</div>


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
	    	<img src="cash.png" alt="Avatar" style="width:100px">
	 	 <p><span>NIC: <%=obj_User_Bean.getSl_no() %>  </span> 
	 	 <p><span>Name: <%=obj_User_Bean.getUser_name() %></span> </p>
	<p><span>Email: <%=obj_User_Bean.getEmail() %></span> </p><br>
	   	<p><span>Contact Number:<%=obj_User_Bean.getMobile() %></span> </p> <br>
	   	
	   	
	   	
	   	<label for="payment"> Amount </label>
    <input type="text" id="payment" name="firstname" placeholder="Amount">
	   	
	   	
	   	</a><input type="submit" name="save" value="payment">
	   	
</form>	  
	  
 </div>


 



<%	  
  }
  %>


</body>
</html>
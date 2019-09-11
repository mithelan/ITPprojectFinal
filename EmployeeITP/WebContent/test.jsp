<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="Details.css">
</head>
<body>
<pre><h1 class="text">                            	         Added News</pre></h1></br>


<%
String id = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "ITP";
String username = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


    <form action="SearchServlet_mad" method="get">
      <input type="text" placeholder="Enter News Id..." name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>
    </form>

</br> </br>

	<center><h2><font color="#02075d">NEWS </font></h2></center>
	

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM new";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">
<div>
<%=resultSet.getString("nid") %></br></br>
<%=resultSet.getString("title") %></br></br>
<%=resultSet.getString("ne") %></br></br>
<a href="update_mad.jsp?nid=<%=resultSet.getString("nid")%>" class="submit1">UPDATE</a>
<a href="mad_delete.jsp?nid=<%=resultSet.getString("nid")%>" class="submit1">DELETE</a>

</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

	
</body>
</html>
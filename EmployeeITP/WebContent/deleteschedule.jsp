<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<%
String id=request.getParameter("d");

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "ITP";
String username = "root";
String password = "root";
try{
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement st=null;
ResultSet resultSet = null;
try{
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
 st=connection.createStatement();
 
st.executeUpdate("delete from schedule where EID='"+id+ "'");
}catch(SQLException e)
{
	e.printStackTrace();
}
 response.sendRedirect("Listschedule.jsp");
%>






</body>
</html>
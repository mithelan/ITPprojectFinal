<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String EID = request.getParameter("EID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "ITP";
String username = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, username, password);
statement=connection.createStatement();
String sql ="select * from schedule where EID='"+EID+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<form method="post" action="updateprocess.jsp">
<h3>
	EID: <input type="text" name="EID" value="<%=resultSet.getString("EID") %>" /></br>
	MONDAY : <input type="text" name="Monday" value="<%=resultSet.getString("Monday") %>" /></br>
	TUESDAY : <input type="text" name="Tuesday" min="1" max="500" value="<%=resultSet.getString("Tuesday") %>" ></br>
	WEDNESDAY : <input type="text" name="Wednesday" value="<%=resultSet.getString("Wednesday") %>" /><br>
	THURSDAY : <input type="text" name="Thursday" value="<%=resultSet.getString("Thursday") %>" /></br>
	FRIDAY : <input type="text" name="Friday" value="<%=resultSet.getString("Friday") %>" /><br>
	SATURDAY : <input type="text" name="Saturday" value="<%=resultSet.getString("Saturday") %>" /></br>
	SUNDAY : <input type="text" name="Sunday" value="<%=resultSet.getString("Sunday") %>" /><br>
	</h3>
	
	<center><input type="submit" class="submit" value="UPDATE">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
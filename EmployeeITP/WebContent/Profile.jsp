<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id= request.getParameter("uname");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "ITP";
String userid = "root";
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
<!DOCTYPE html>
<html>
    <head>
    
        
        <meta charset="windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
body {
    margin: 0;
    padding: 0;
		background: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
		family: $font;
	
    background-position: center center;
    background-attachment: fixed;
    background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    background-repeat: no-repeat;
    margin: 100px;
text-align: center;
align: center;
double {border-style: double;}
}
#a{
font-family:'Lato', sans-serif;

}
button{
background-color:#738CC5;
width: 30%;
padding: 9px 10px;
margin:5px 5px;
cursor:pointer;
border:none;
margin-left: 80px; 

}

add{
background-color:#738CC5;
width: 30%;
padding: 9px 10px;
margin:5px 5px;
cursor:pointer;
border:none;
margin-left: 500px; 

}

div{
   border: 5px solid black;
   margin-top: 100px;
   margin-bottom: 100px;
   margin-right: 250px;
   margin-left: 180px;
   }
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid black;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
input[type=text],[type=password] {
	width: 50%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}

</style>
                                                                                            <a href="LogoutSupplier" >LogOut</a>
<div>
        <title>Get Well Soon Clinic </title>
    </head>
    
<h2>PROFILE </h2>
    <body>
    
    <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from requests where uname='"+request.getParameter("uname")+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<label id="a"  >Company Name:</lable><%=resultSet.getString("comname") %><br><br>
<label id="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:</lable><%=resultSet.getString("address") %><br><br>
<label id ="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:</lable><%=resultSet.getString("email") %><br><br>
<label id="a">Mobile number:</lable><%=resultSet.getString("mobnumber") %><br>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    
    <form method="post" action="pp.jsp">
            
        ID:<input type="text" name="id" id="id" /><br/><br/>
          User Name:<input type="text" name="uname" id="uname" /><br/><br/>
        PRODUCT: <input type="text" name="product" id="product" /><br/><br/>
        UNIT PRICE: <input type="text" name="unitprice" id="unitprice" /><br/><br/>
        QUANTITY: <input type="text" name="quantity" id="quantity" /><br/><br/>
        <button class="add">ADD</button><br/><br/>
 </form>
        
   <table border="1">
<tr>

<td>Id</td>
<td>User Name</td>
<td>Product</td>
<td>Unit Price</td>
<td>Quantity</td>



</tr>     
        
 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from prof where uname='"+request.getParameter("uname")+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("uname") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("unitprice") %></td>
<td><%=resultSet.getString("quantity") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
 </div>     
 
</body>

</html>
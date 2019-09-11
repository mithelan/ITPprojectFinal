<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String supid=request.getParameter("supid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM addsupp WHERE supid="+supid);
out.println("Data Deleted Successfully!");
request.getRequestDispatcher("/Supplier_Manager.jsp").forward(request, response);


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>    

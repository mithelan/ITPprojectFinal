<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String username = "root";%>
<%!String password = "root";%>
<%
String sid = request.getParameter("sid");
String sname=request.getParameter("sname");
String quantity=request.getParameter("quantity");
String expdate=request.getParameter("expdate");
String supplier=request.getParameter("supplier");
String redate=request.getParameter("redate");
if(sid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(sid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,username,password);
String sql="Update stocks set sid=?,sname=?,quantity=?,expdate=?,supplier=?,redate=? where sid="+sid;
ps = con.prepareStatement(sql);
ps.setString(1,sid);
ps.setString(2, sname);
ps.setString(3, quantity);
ps.setString(4, expdate);
ps.setString(5, supplier);
ps.setString(6, redate);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("Details.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
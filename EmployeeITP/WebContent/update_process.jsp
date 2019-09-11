<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String supid = request.getParameter("supid");
String supplier=request.getParameter("supplier");
String product=request.getParameter("product");
String unitprice =request.getParameter("unitprice");

if(supid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(supid);
try
{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="Update addsupp set supid=?,supplier=?,product=?,unitprice=? where supid="+supid;
	ps = con.prepareStatement(sql);
	ps.setString(1,supid);
	ps.setString(2, supplier);
	ps.setString(3, product);
	ps.setString(4, unitprice);
	
	int i = ps.executeUpdate();
	if(i > 0)
	{
	out.print("Record Updated Successfully");
	request.getRequestDispatcher("/Supplier_Manager.jsp").forward(request, response);
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
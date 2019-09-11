<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Get Well Soon</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="Send.css">
    </head>
    <body>
    <pre><h1 class="text">                            	         Stock Management System</pre></h1></br>


<ul>
<li><a href="xxx">Get Well Soon</a></li>
  <li><a href="http://localhost:8181/Stocks/AddStocks.jsp">Add Stocks</a></li>
  <li><a href="http://localhost:8181/Stocks/Details.jsp">Stock Details</a></li>
  <li><a href="http://localhost:8181/Stocks/SendMail12.jsp">Request</a></li>
   <li><a href="http://localhost:8181/Stocks/DeleteStocks.jsp">Delete Stocks</a></li>
  <li><a href="http://localhost:8181/Stocks/pres.jsp">e-prescription</a></li>
  <li><a href="xxx">logout</a></li>
</ul>

<div class="bod" >
<center><h2><font color="#02075d">REQUEST</font></h2></center>
        <form action="MailProcess12.jsp">
            <table>
                <tr><td><b><font color="Black">To:
                    </td>
                    <td><b><b><input type="text" name="mail" placeholder="Enter Sender Email"/><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><font color="Black">Subject:
                    </td>
                    <td>
                        <input type="text" name="sub" placeholder="Enter Subject"><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><font color="Black">Message Text:
                    </td>
                    <td>
                        <textarea rows="12" cols="80" name="mess"></textarea><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Send" class="submit">
                    </td>
                    <td>
                        <input type="reset" value="Reset" class="reset">
                    </td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.NRead_Values"%>
<%@page import="model.User_Bean"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import=" java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request</title>

<link rel = "stylesheet"
   type = "text/css"
   href = "buttonStyleMsg.css" />
</head>
<body>
<%
String textmessage=request.getParameter("message");
String phone=request.getParameter("phone");
String authkey = "3546AmotcsHgmfo5d70f36b";
//Multiple mobiles numbers separated by comma
String mobiles = phone;
//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "ABCDEF";
//Your message to send, Add URL encoding here.
String message = textmessage;
//define route
String route="4";
//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;
//encoding message
String encoded_message=URLEncoder.encode(message);
String mainUrl="http://world.msg91.com/api/sendhttp.php?";//Your sms gateway provider API
//Prepare parameter string
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("authkey="+authkey);
sbPostData.append("&mobiles="+mobiles);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);
//final string
mainUrl = sbPostData.toString();
try
{
//prepare connection
myURL = new URL(mainUrl);
myURLConnection = myURL.openConnection();
myURLConnection.connect();
reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
String success="Your Booking sent sucessfully";
out.println(success);
//finally close connection
reader.close();
}
catch (IOException e)
{
e.printStackTrace();
}
%>







</body>
</html>
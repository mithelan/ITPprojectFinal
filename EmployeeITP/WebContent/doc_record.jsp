<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		<script>
var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>

<title>Online Clinic Management</title>
<link rel="stylesheet" type="text/css" href="doc_record.css">
</head>
<body>

<pre><h1 class="text">                                     Finance Management System</pre></h1>


  <div class="search-container" style="left:1263px; position:absolute;">
   
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    
  </div>

  	<%
String id = request.getParameter("ppid");
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
  	

  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();

String sql ="SELECT * from patient_reg where userID='"+id+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>




	


  <br><br><br><br>
  <h1 align="center"><u>Personal Details</u></h1>
  <h3>1. Appointment ID: </h3>
  <h3 ">2. Patient ID: <%=resultSet.getString("userID")%> </h3>
  <h3>3. Patient Name:<%=resultSet.getString("firstname") %> <%=resultSet.getString("lastname") %> </h3>
  <h3>4. Age: <%=resultSet.getString("age") %> </h3>
  <h3>5. Gender:  <%=resultSet.getString("gender") %> </h3>
  <h3>5. Blood Group: <%=resultSet.getString("bloodGroup") %> </h3>
  <h3>6. Contact Number:  <%=resultSet.getString("mobileNo") %> </h3>
  
  <form action="NarthiAddServlet" method="post">
  <hr style="border: 1px solid black">
  <h1 align="center"><u>Patient History</u></h1>
    <div class="row">
    <div class="col-0">
      
    </div>
    <div class="col-10">
      <center><textarea name="history" placeholder="" style="width:700px; height:200px;"></textarea> </center>
    </div>
  </div>
  <hr style="border: 1px solid black">
  
  
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
 
  <h1 align="center"><u>Upload Treatment Records</u></h1><br> <br> <br>
  
  
  
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Temperature</p>
    </div>
    <div class="col-25">
      <input type="text"  name="temperature" placeholder="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Blood Pressure</p>
    </div>
    <div class="col-25">
      <input type="text" name="bp" placeholder="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Respiration Rate</p>
    </div>
    <div class="col-25">
      	<input type="text"  name="RR" placeholder="">
    </div>
  </div>
   <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Pulse Rate</p>
    </div>
    <div class="col-25">
      	<input type="text"  name="pulse" placeholder="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Other Details</p>
    </div>
    <div class="col-75">
      <textarea name="others" placeholder="" style="height:200px; width:700px"></textarea>
    </div>
    <br>
  </div>
   <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Medicine 01</p>
    </div>
    <div class="col-25">
      		<input type="text"  name="medicine1" placeholder="">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Medicine 02</p>
    </div>
    <div class="col-25">
      		 <input type="text" name="medicine2" placeholder="">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Medicine 03</p>
    </div>
    <div class="col-25">
      		<input type="text"  name="medicine3" placeholder="">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Medicine 04</p>
    </div>
    <div class="col-25">
      <input type="text"  name="medicine4" placeholder="">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <p style="font-family:verdana;">Medicine 05</p>
    </div>
    <div class="col-25">
      		<input type="text"  name="medicine5" placeholder="">
    </div>
  </div>
  
 


	<input type="text" name="patid">

 
 
  
	
	<button value="" name="patid">Upload Records</button>
	<br><br>
	
	 </form>
	 
	 
	 
	 
	 
	  
</body>
</html>
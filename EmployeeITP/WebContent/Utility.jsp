<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="css/Utility.css">

</head>

<body onload='document.form1.text1.focus()'>



<h1 class="text">Utility Bill Payment</h1>

<ul>
 <li> <a  href="payment.jsp">Home</a></li>
  <li>  <a href="Income&Expenses.jsp">Income and Expenses</a></li>
  <li>  <a class="active" href="Utility.jsp">UtilityBill Payment</a></li>
 <li>   <a href="#Supplier" href="SuppilerFinance.jsp">Supplier</a></li>
  <li>  <a href="#Salary"  href="SalaryFinance.jsp">Salary</a></li>
  <li>  <a href="#Report">Report</a>
  
  </ul>

	
<form method="post" action="UtilityServlet" >



<div class="Image"> <img src="images/4.ele.png"   height="450" width="300" alt="Pay" ></div>



<div class="bod">


<div class="ArrangeBoxes" style="position:absolute; top:42px; left:196px;">  
<p>Title*</p>
<input type="text" name="title" class="advancedSearchTextBox" required />
<br> <br>

 
<p>Provider*</p>

<select name="provider" class="select-css" required>
    <option value="none">Please Select</option>
    <option value="Electricity Bill">Electricity Bill</option>
    <option value="Water Bill">Water Bill</option>
    <option value="Telephone Bill">Telephone Bill</option>
  
</select>
 <p>Select Payment Account</p>

<select name="payAcc" class="select-css" required>
    <option value="0">Please Select</option>
    <option value="Genie App">Genie App</option>
    <option value="Commericial Bank">Commericial Bank</option>
<br> <br>
  
</select>
  
       
 </div>
 <div class="next" style="position:absolute; top:42px; left:537px;" >
  <p>Reference Number</p>
<input type="text" name="rnumber"  required/>
<br> <br> 
<br><br>
<label for="start">Effective Payment Date</label>
<br><br>
<input type="date" name="date" id="myDate" value="2019-02-09">
       
       
       <p>Amount Paid</p>
<input type="number" name="paid"  id="tbNumbers" value=""
            onkeypress="javascript:return isNumber(event)"   />
 
 
 
 
 
 </div>
 </div>
<button class="button "name="submit" value="Submit"  onclick="myFunction()"><span> Update</span></button>
      
</div>	
 </form>
 
 
 <script>
function myFunction() {
  var x = document.getElementById("myDate").value;
  document.getElementById("demo").innerHTML = x;
}




function isNumber(evt) {
    var iKeyCode = (evt.which) ? evt.which : evt.keyCode
    if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
        return false;

    return true;
}  
</script>
</body>
</html>
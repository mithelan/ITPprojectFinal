<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
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

div{
   border: 5px solid black;
   margin-top: 100px;
   margin-bottom: 100px;
   margin-right:250px;
   margin-left: 180px;
   }

* {
  box-sizing: border-box;
}

.column {
		float: left;
		width: 50%;
		padding: 50px;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 24px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}


.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
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
.text {
	text-transform: uppercase;
	background: linear-gradient(to right, #efefbb 0%, #524E9B 100%);
	
	font: {
		size: 30vw;
		family: $font;
		
	};
}
img { 
  background: url(E-Commerce-1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}



.submit {
	display: inline-block;
  padding: 15px 70px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #02075d;
  border: none;
  border-radius: 25px;
  opacity: 1;
}

input[type=text],[type=password] {
	width: 50%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}



input[type=number] {
	width: 20%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}




.Image{
	position:absolute;
	top:-93px;
	left:585px;
}



.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}




@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }

  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
<form  method="POST" action="AddSupplier">


            <h2>Add Suppliers  </h2>
			
				<td>Supplier</td>
				<td><input type="text" name="supplier"  required/><br>
			
				<td>Product</td>
				<td><input type="text" name="product" required//><br>
			
				<td>Unit Price</td>
				<td><input type="text" name="unitprice" required/ /><br>
			
			
		
	 	<button type="submit" value=""  id="submit" onClick="">ADD</button> 
			
			
<button type="submit" value="reset"  id="submit" onClick="">RESET</button>
			
		
		
</form>
</div>
</body>

</html>
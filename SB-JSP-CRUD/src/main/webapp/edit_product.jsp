<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product Page</title>
</head>
<body>
<div align="center">
	<h1>Edit Product</h1>
	
	
	<form action="save" method="post" >
	
	<table border="0" cellpadding="10">
		
		<tr>
			<td>Product Id:</td>
			<td><input type="text"  name="id" value="${product.id}" readonly="readonly"  ></td>
		</tr>
		<tr>
			<td>Name:</td>
			<td><input type="text"  name="name" value="${product.name}" ></td>
		</tr>
		<tr>
			<td>Brand:</td>
			<td><input type="text" name="brand"  value="${product.brand}"> </td>
		</tr>
		<tr>
			<td>Made In:</td>
			<td><input type="text" name="madein" value="${product.madein}"></td>
		</tr>
		<tr>
			<td>Price:</td>
			<td><input type="text" name="price"  value="${product.price}"></td>
		</tr>
		<tr>
			<td><button type="submit">Save</button></td>
		</tr>
	
	</table>
	</form>

</div>
</body>
</html>
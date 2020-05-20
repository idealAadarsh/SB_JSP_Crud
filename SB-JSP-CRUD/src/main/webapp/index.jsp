<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product </title>
</head>
<body>
<div align="center">
 	<h1>Product Details</h1>
 	
 	<a href="new">Create New Product</a>
 	
 	<br/><br/>
	
	<table border="1" cellpadding="10">
		<thead>
			<tr>
				<th>Product ID</th>
				<th>Name</th>
				<th>Brand</th>
				<th>Made In</th>
				<th>Price</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="product" items="${list}">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.brand}</td>
                    <td>${product.madein}</td>
                    <td>${product.price}</td>
                    <td>
                    	<a href="edit?id=${product.id}">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=${product.id}">Delete</a>
                    	
                    </td>
                </tr>
            </c:forEach>		
		
		</tbody>	
	</table>

</div>
</body>
</html>
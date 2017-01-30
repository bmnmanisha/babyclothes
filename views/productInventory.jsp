<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Inventory Page</title>
<link href="admin/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/resources/css/bootstrap.css" rel="stylesheet">
<style>
.borders{
border:1px solid black;
}
</style>
</head>
<body>
<%@ include file="templete/header.jsp" %>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Product Inventory Page</h1>
				<p class="lead">This is the Product Inventory Page</p>
			</div>
		<a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
			<table class="borders">
				<thead>
					<tr class="bg-success">
						<th>Image</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th>updation</th>
						
					</tr>
				</thead>
				<c:forEach items="${products}" var="product">
					<tr>
						<td><img src="<c:url value="/resources/images/${product.productId}.jpg" />" alt="image" style="width: 100%" /></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productCondition}</td>
						<td>${product.productPrice}</td>
						<td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a> 
						<a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-remove"></span></a> 
						<a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-pencil"></span></a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<%@ include file="templete/footer.jsp"%>
	<script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]]
        });
    });
</script>
</body>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<h1>Add Product</h1>
			<p class="lead">Fill the below information to add a product:</p>
		</div>
		<form:form action="productSubmitted" method="post" commandName="pro">
			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="productName" class=" form-control" />
			</div>
			</br>
			<div class="form-group">
				<label for="description">Description</label>
				<form:input path="productDescription" class=" form-control" />
			</div>
			</br>
			<div class="form-group">
				<label for="price">Price</label>
				<form:input path="productPrice" class=" form-control" />
			</div>
			</br>
			<div class="form-group">
				<label for="productImage">Image</label>
				<form:input path="productImage" class=" form-control" />
			</div>
			<br />
			<br />
			<div class="form-group">
				<a href="productadd"> <input type="submit" value="submit"
					class="btn btn-default"></a>
			</div>
		</form:form>
	</div>

</body>
</html>
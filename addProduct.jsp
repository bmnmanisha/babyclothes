<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.css" rel="stylesheet">
</head>
<body>
	<div class="container-wrapper">
	<%@include file="templete/header.jsp" %>
		<div class="container">
			<div class="page-header">
				<h1>Add Product</h1>
				<p class="lead">Fill the below information to add a product:</p>
			</div>
			<form:form action="productadd" method="POST" commandName="productsubmitted">
				<div class="form-group">
					<label for="productName">Name</label>
					<form:input path="productName" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="productDescription">Description</label>
					<form:input path="productDescription" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="productPrice">Price</label>
					<form:input path="productPrice" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="productStatus">Status</label>
					<form:input path="productStatus" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="productImages" class="control-label">Upload Picture</label>
					<form:input path="productImages"  type="file" class="form:input-large" />
				</div>
				<br />
				<br />
				<input type="submit" value="submit" class="btn btn-primary">
			</form:form>
		</div>
		<%@include file="templete/footer.jsp" %>
	</div>
</body>
</html>
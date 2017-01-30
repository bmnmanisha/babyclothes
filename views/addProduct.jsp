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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<div class="container-wrapper">
		<%@include file="templete/header.jsp"%>
		<div class="container">
			<div class="page-header">
				<h1>Add Product</h1>
				<p class="lead">Fill the below information to add a product:</p>
			</div>
			<form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="POST" commandName="product" enctype="multipart/form-data" >
				<div class="form-group">
					<label for="productName">Name</label>
					<form:input path="productName" class="form-Control" />
				</div>
				<div class="form-group">
                <label for="productCategory">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Winter Clothes" />Winter Clothes</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Summer Clothes" />Summer Clothes</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Rainy Clothes" />Rainy Clothes</label>
            </div>
				<div class="form-group">
					<label for="productDescription">Description</label>
					<form:textarea path="productDescription" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="productPrice">Price</label>
					<form:input path="productPrice" class="form-Control" />
				</div>
				<div class="form-group">
					<label for="productCondition">Condition</label> 
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" />New</label> 
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" />Used</label>
				</div>
				<div class="form-group">
					<label for="productStatus">Status</label> 
					<label	class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Active</label> 
					<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
				</div>
				<div class="form-group">
					<label for="unitInStock">Unit In Stock</label>
					<form:errors path="unitInStock" cssStyle="color:#ff0000;" />
					<form:input path="unitInStock" id="unitInStock"
						class="form-Control" />
				</div>

				<div class="form-group">
					<label for="productManufacturer">Manufacturer</label>
					<form:input path="productManufacturer" id="manufacturer"
						class="form-Control" />
				</div>
				<div class="form-group">
					<label for="productImages" class="control-label">Upload Picture</label>
					<form:input path="productImages" type="file" class="form:input-large" />
				</div>
				<br />
				<br />
				<input type="submit" value="submit" class="btn btn-primary">
				<a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
			</form:form>
		</div>
		<%@include file="templete/footer.jsp"%>
	</div>
</body>
</html>
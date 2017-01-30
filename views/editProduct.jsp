<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="templete/header.jsp" %>>
<div class="container-wrapper">
<div class="container">
<div class="page-header">
<h1>Edit Product</h1>
<p class="lead">Please update the product information here </p>
</div>

<form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="productsubmitted" enctype="multipart/form-data">

<form:hidden path="productId" value="${product.productId}" />

<div class="form-group">
<label for="productName">Name</label>
<form:errors path="productName" cssStyle="color:#ff0000;" />
<form:input path="productName" class="form-Control" value="${product.productName}" />
</div>
<div class="form-group">
                <label for="productCategory">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="guitar" />Guitar</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="piano" />Piano</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory" />Accessory</label>
            </div>

            <div class="form-group">
                <label for="productDescription">Description</label>
                <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
            </div>

            <div class="form-group">
                <label for="productPrice">Price</label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}" />
            </div>

            <div class="form-group">
                <label for="productCondition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" />New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" />Used</label>
            </div>

            <div class="form-group">
                <label for="productStatus">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="productManufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>
            <br/><br/>

            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
</form:form>
</div>
</div>
<%@ include file="templete/footer.jsp" %>>
</body>
</html>
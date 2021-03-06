<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link href="resources/css/bootstrap.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<body>
	<div class="row">
		<div class="container-wrapper">
			<div class="container">
			<div class="signup-box">
						<%@ include file="templete/header.jsp"%>
					<h1>
						<center>
							<b><i>REGISTER NOW....</i></b>
						</center>
					</h1>

					<h3>BASIC INFORMATION</h3>
					<hr>
					<form:form action="${pageContext.request.contextPath}/register" method="POST"
						commandName="customer">
						<h3>Basic Information</h3>

						<div class="form-group">
							<label for="customerName">Name</label>
							<form:input path="customerName"  class="form-Control" />
						</div>

						<div class="form-group">
							<label for="customerEmail">Email</label>
							<form:input path="customerEmail" class="form-Control" />
						</div>

						<div class="form-group">
							<label for="customerPhone">Phone</label>
							<form:input path="customerPhone" class="form-Control" />
						</div>

						<div class="form-group">
							<label for="username">Username</label>
							<form:input path="username" class="form-Control" />
						</div>

						<div class="form-group">
							<label for="password">Password</label>
							<form:password path="password" class="form-Control" />
						</div>


						<br />

						<h3>Billing Address</h3>

						<div class="form-group">
							<label for="billingStreet">Street Name</label>
							<form:input path="billingAddress.streetName" id="billingStreet"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="billingApartmentNumber">Apartment Number</label>
							<form:input path="billingAddress.apartmentNumber"
								id="billingApartmentNumber" class="form-Control" />
						</div>

						<div class="form-group">
							<label for="billingCity">City</label>
							<form:input path="billingAddress.city" id="billingCity"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="billingState">State</label>
							<form:input path="billingAddress.state" id="billingState"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="billingCountry">Country</label>
							<form:input path="billingAddress.country" id="billingCountry"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="billingZip">Zipcode</label>
							<form:input path="billingAddress.zipCode" id="billingZip"
								class="form-Control" />
						</div>

						<br />

						<h3>Shipping Address for Products</h3>

						<div class="form-group">
							<label for="shippingStreet">Street Name</label>
							<form:input path="shippingAddress.streetName" id="shippingStreet"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="shippingApartmentNumber">Apartment Number</label>
							<form:input path="shippingAddress.apartmentNumber"
								id="shippingApartmentNumber" class="form-Control" />
						</div>

						<div class="form-group">
							<label for="shippingCity">City</label>
							<form:input path="shippingAddress.city" id="shippingCity"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="shippingState">State</label>
							<form:input path="shippingAddress.state" id="shippingState"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="shippingCountry">Country</label>
							<form:input path="shippingAddress.country" id="shippingCountry"
								class="form-Control" />
						</div>

						<div class="form-group">
							<label for="shippingZip">Zipcode</label>
							<form:input path="shippingAddress.zipCode" id="shippingZip"
								class="form-Control" />
						</div>

						<br />
						<br />

						<input type="submit" value="submit" class="btn btn-primary">
						<a href="<c:url value="/" />" class="btn btn-primary">Cancel</a>

					</form:form>
				</div>
			</div>
		</div>
			<%@ include file="templete/footer.jsp"%>
</body>
</html>
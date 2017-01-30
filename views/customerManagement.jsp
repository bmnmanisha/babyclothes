<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Management Page</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<style>
.borders{
border:1px solid black;
}
</style>
</head>
<body>
	<%@ include file="templete/header.jsp"%>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Customer Management Page</h1>
				<p class="lead">This is the customer management page!</p>
			</div>
			<table class="table table-striped table-hover borders">
				<thead>
					<tr class="bg-success">
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>UserName</th>
						<th>Enabled</th>
					</tr>
				</thead>
				<c:forEach items="${customerList}" var="customer">
					<tr>
						<td>${customer.customerName}</td>
						<td>${customer.customerEmail}</td>
						<td>${customer.customerPhone}</td>
						<td>${customer.username}</td>
						<td>${customer.enabled}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<%@ include file="templete/footer.jsp"%>
</body>
</html>
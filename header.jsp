<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!--JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<style>
.navbar {
	background-color: #282828;
}

.navbar li a {
	color: white !important;
}

.navbar li a:hover {
	color: red !important;
}

.navbar-default .navbar-nav>.active>a {
	background-color: blue !important;
}
</style>
</head>
<body>
	<div class="container">
		<div class="navbar navbar-default row">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="addProduct">Products</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav pull-right">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
					
						<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<li><a href="<c:url value="/admin"/>">Admin</a></li>
					</c:if>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<li><a href="<c:url value="login"/>">Login</a></li>
					<li><a href="<c:url value="register"/>">Register</a></li>
				</c:if>
			</ul>
			</nav>
		</div>
	</div>
</body>
</html>
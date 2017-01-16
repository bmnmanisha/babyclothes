<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
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
				<li><a href="#">Products</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav pull-right">
				<li><a href="#">Login</a></li>
				<li><a href="#">Register</a></li>
			</ul>
		</div>
	</div>
</body>
</html>
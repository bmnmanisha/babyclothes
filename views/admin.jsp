<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="templete/header.jsp"%>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Administrator page</h1>
				<p class="lead">Welcome to the administrator page!</p>
			</div>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<h2>
					Welcome:${pageContext.request.userPrincipal.name} | <a
						href="<c:url value="/j_spring_security_logout" />">Logout</a>
				</h2>
			</c:if>
			<h3>
				<a href="<c:url value="/admin/productInventory" /> ">Product
					Inventory</a>
			</h3>
			<p>click Here to Add , Modify and View the Products!</p>
			<br />
			<br />
			<h3>
				<a href="<c:url value="/admin/customer" />">Customer Management</a>
			</h3>
			<p>click Here to view the customer information!</p>
		</div>
	</div>
	<%@ include file="templete/footer.jsp"%>
</body>
</html>
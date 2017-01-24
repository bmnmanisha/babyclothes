<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style>
#submit {
	width: 1140px;
}

#button {
	width: 1140px;
}
</style>
</head>
<body>
	<%@ include file="templete/header.jsp"%>
	<div class="container-wrapper">
		<div class="container">
			<div id="login-box">
				<h2>Login with Username and Password</h2>
				

				<c:if test="${not empty msg}">
					<div class="msg">${msg}</div>
				</c:if>
				<!--j_spring_security_check"-->
				
				<form action="<c:url value="/j_spring_security_check"/>" method="post">

					<c:if test="${not empty error}">
						<div class="error">${error}</div>
					</c:if>

					<div class="form-group">
						<label for="username">User: </label>
						 <input type="text" name="username" reguired class="form-control" />
					</div>
					<div class="form-group">
						<label for="password">Password:</label> 
						<input type="password" name="password" reguired class="form-control" />
					</div>
					<input type="Submit" value="Login" class="btn btn-primary" id="submit"><br> <br> 
					<input type="button" value="Forget" class="btn btn-primary" id="button">
				</form>
			</div>
			 <%@ include file="templete/footer.jsp"%>
					</div>

	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My First Web Page</title>
<link rel="stylesheet" href="resources/css/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/css/custom.css">
<script src="resources/js/js/respond.js"></script>
<style>
body{
background-image:url(resources/images/bg.jpg)
}
#mycarousel {
	width: 1170px;
}

#img {
	width: 1170px;
	height: 600px;
}

</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<%@include file="header.jsp"%>
			<div id="mycarousel" class="carousel slide" data-ride="carousel">
				<!--Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
					<li data-target="#mycarousel" data-slide-to="1"></li>
					<li data-target="#mycarousel" data-slide-to="2"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="resources/images/slider5.jpg" alt="..." class="img-rounded" id="img">
						<div class="carousel-caption">
							<h3>Collection of baby Clothes</h3>
						</div>
					</div>
					<div class="item">
						<img src="resources/images/slider6.jpg" alt="..." class="img-rounded" id="img">
						<div class="carousel-caption">
							<h3>Collection of baby Clothes</h3>
						</div>
					</div>
					<div class="item">
						<img src="resources/images/slider7.jpg" alt="..." class="img-rounded" id="img">
						<div class="carousel-caption">
							<h3>Collection of baby Clothes</h3>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#mycarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="right carousel-control" href="#mycarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<img src="resources/images/slider1.jpg" alt="" class="img-circle" width="304"
					height="236">
				<h4>Best and Beautiful clothes</h4>
			</div>
			<div class="col-sm-4">
				<p>
					<img src="resources/images/slider2.jpg" alt="" class="img-circle" width="304"
						height="236">
				</p>
				<h4>Best and Beautiful clothes</h4>
			</div>
			<div class="col-sm-4">
				<p>
					<img src="resources/images/slider3.jpg" alt="" class="img-circle" width="304"
						height="236">
				</p>
				<h4>Best and Beautiful clothes</h4>
			</div>
		</div>
		
	</div>
	<footer class="row">
		<%@include file="footer.jsp"%>
	</footer>
	<script src="resources/js/js/jquery.js"></script>
	<script src="resources/js/js/bootstrap.min.js"></script>
</body>
</html>
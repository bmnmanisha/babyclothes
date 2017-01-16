<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<style>
.carousel-inner>.item>img {
	min-width: 100%;
	height: 800px;
}

.carousel-inner {
	position: relative;
	width: 100%;
}
</style>

</head>
<body>
	<div class="container">
	<%@ include file="templete/header.jsp" %>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="img1.jpg">
					<div class="carousel-caption">
						<h3>Chania</h3>
						<p>The atmosphere in Chania has a touch of Florence and
							Venice.</p>
					</div>
				</div>

				<div class="item">
					<img src="img2.jpg">
					<div class="carousel-caption">
						<h3>Chania</h3>
						<p>The atmosphere in Chania has a touch of Florence and
							Venice.</p>
					</div>
				</div>

				<div class="item">
					<img src="img3.jpg">
					<div class="carousel-caption">
						<h3>Flowers</h3>
						<p>Beatiful flowers in Kolymbari, Crete.</p>
					</div>
				</div>

				<div class="item">
					<img src="img4.jpg">
					<div class="carousel-caption">
						<h3>Flowers</h3>
						<p>Beatiful flowers in Kolymbari, Crete.</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div class="row">
			<div class="col-sm-4">
				<img src="img5.jpg" class="img-circle" alt="Cinque Terre"
					width="304" height="236">
				<p>first images</p>
			</div>
			<div class="col-sm-4">
				<img src="img6.jpg" class="img-circle" alt="Cinque Terre"
					width="304" height="236">
				<p>second images</p>
			</div>
			<div class="col-sm-4">
				<img src="img7.jpg" class="img-circle" alt="Cinque Terre"
					width="304" height="236">
				<p>thride images</p>
			</div>
			<%@ include file="templete/footer.jsp" %>
		</div>
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.js"></script>
</body>
</html>
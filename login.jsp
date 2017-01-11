<html>
<head>
<title>Login Form</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Custom Theme files-->
<link href="resources/css/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//Custom Theme files -->
<!--web font-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'><!--web font-->
<!--//web font-->
<!--js-->
<script src="resources/js/js/jquery.min.js"></script>
<script src="resources/js/js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	   </script>
<!--//js-->
</head>
<body>
	<!-- main -->
	
		
		<div class="main-info">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><h2><span>Login</span></h2></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Register</span></li>
						<div class="clear"> </div>
					</ul>				  	 
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="login-top">
								<form>
									<input type="text" class="email" placeholder="Email" required=""/>
									<input type="password" class="password" placeholder="Password" required=""/>	
									<input type="checkbox" id="brand" value="">
									<label for="brand"><span></span> Remember me?</label>
								</form>
								<div class="login-bottom">
									<ul>
										<li>
											<a href="#">Forgot password?</a>
										</li>
										<li>
											<form>
												<input type="submit" value="LOGIN"/>
											</form>
										</li>
									<ul>
									<div class="clear"></div>
								</div>	
							</div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="login-top sign-top">
								<form>
									<input type="text" class="name active" placeholder="Your Name" required=""/>
									<input type="text" class="email" placeholder="Email" required=""/>
									<input type="password" class="password" placeholder="Password" required=""/>		
									<input type="checkbox" id="brand1" value="">
									<label for="brand1"><span></span> Remember me?</label>
								</form>
								<div class="login-bottom">
									<ul>
										<li>
											<a href="#">Forgot password?</a>
										</li>
										<li>
											<form>
												<input type="submit" value="SIGN UP"/>
											</form>
										</li>
									<ul>
									<div class="clear"></div>
								</div>	
							</div>
						</div>
					</div>	
				</div>
				<div class="clear"> </div>
			</div>
			<div class="social-icons">
				<ul> 
					<li><a href="#"><span class="icons"></span><span class="text">Facebook</span></a></li>
					<li class="twt"><a href="#"><span class="icons"></span><span class="text">Twitter</span></a></li>
					<li class="ggp"><a href="#"><span class="icons"></span><span class="text">Google+</span></a></li>
					<li class="pin"><a href="#"><span class="icons"></span><span class="text">Pinterest</span></a></li>
					<div class="clear"> </div>
				</ul> 
			</div>
		</div>	
		<!--copyright-->
		<div class="copyright">
			<p> © 2016 All rights reserved</p>
		</div>
		<!--//copyright-->
	
</html>
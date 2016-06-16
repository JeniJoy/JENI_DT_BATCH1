<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Welcome to mobilekart</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
	background-image: url("resources/images/jm.jpg"),
		url("tooplate_content_middle.png");
}

nav
{
   position: fixed;
   top: 0;
}
</style>

</head>


<body>
	<div class="row">
		<div class="row-sm-4" background=>
			<div id="" class="">

				<h1>
					<br />
					<center>
						<b>
							<title="Mem&eacute;nto">Mem<span>é</span>nto
						</b>
					</center>
				</h1>
				<center>
					<p>Another nice MOBILE Online Shopping</p>
					<center>
			</div>
		</div>



		<div class="row-md-4">

			<nav class="navbar navbar-default" >
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"><span
						class="glyphicon glyphicon-home"></span></a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown" ><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="cat1.jsp">Smart Phones</a></li>
							<li><a href="cat2.jsp">Feature Phones</a></li>
							<li><a href="cat3.jsp">Refurbished Phones</a></li>
						</ul></li>
					<li><a href="#">About us</a></li>
					<li><a href="#">Gift Cards</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="Login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
			</nav>

		</div>
		<div class="row-lg-4">

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
						<img src="resources/images/m5.png" alt="Chania" width="1500px"
							height="100px">
						<div class="carousel-caption"></div>
					</div>

					<div class="item">
						<img src="resources/images/m6.png" alt="Chania" width="1500px"
							height="100px">
						<div class="carousel-caption"></div>
					</div>

					<div class="item">
						<img src="resources/images/m1.png" alt="Flower" width="1500px"
							height="100px">
						<div class="carousel-caption"></div>
					</div>

					<div class="item">
						<img src="resources/images/m4.png" alt="Flower" width="1500px"
							height="100px">
						<div class="carousel-caption"></div>
					</div>
				</div>


			</div>


		</div>
		<div class="row-sm-4">

			<div class="container-fluid text-center bg-grey">
				<h2>Categories</h2>

				<div class="row text-center">
					<div class="col-sm-4">
						<div class="thumbnail">
							<img src="resources/images/hgp.jpg" alt="Paris" width="200px"
								height="200px">
							<p>
								<strong>Smart Phone</strong>
							</p>
							<p>Apple iphone-6s</p>
							<button class="btn btn-md">Shop now</button>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img src="resources/images/looo.jpg" alt="New York" width="200px"
								height="200px">
							<p>
								<strong>Feature Phone</strong>
							</p>
							<p>BlackBerry Bold 9900</p>
							<button class="btn btn-md">Shop now</button>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img src="resources/images/887.jpg" alt="San Francisco"
								width="300px" height="300px">
							<p>
								<strong>3G-Phone</strong>
							</p>
							<p>Cubot S308</p>
							<button class="btn btn-md">Shop now</button>
						</div>
					</div>
				</div>

			</div>



			<div class="row-sm-4">
				<div class="container-fluid text-center">
					<h2>SERVICES</h2>
					<h4>What we offer</h4>
					<br>
					<div class="row">
						<div class="col-sm-4">
							<span class="glyphicon glyphicon-off"></span>
							<h4>POWER</h4>
							<p>Power Saving features on phones help boost the battery
								life as well.</p>
						</div>
						<div class="col-sm-4">
							<span class="glyphicon glyphicon-heart"></span>
							<h4>LOVE</h4>
							<p>Love our online shopping</p>
						</div>
						<div class="col-sm-4">
							<span class="glyphicon glyphicon-tower"></span>
							<h4>TOWER</h4>
							<p>3G technologies are significantly faster than previous
								2.5G data services.</p>
						</div>
					</div>
					<br> <br>
					<div class="row">
						<div class="col-sm-4">
							<span class="glyphicon glyphicon-gift"></span>
							<h4>GIFT</h4>
							<p>We provide gift for each customer.</p>
						</div>
						<div class="col-sm-4">
							<span class="glyphicon glyphicon-certificate"></span>
							<h4>CERTIFIED</h4>
							<p>Approved by certified</p>
						</div>
						<div class="col-sm-4">
							<span class="glyphicon glyphicon-wrench"></span>
							<h4>WORK</h4>
							<p>Service charge provide free for all customer.</p>
						</div>
					</div>
				</div>
			</div>
			<br>






			<div class="row-sm-4">
				<div class="container-fluid bg-grey">
					<h2 class="text-center">CONTACT</h2>
					<div class="row">
						<div class="col-sm-5" align="center">
							<p>
								<b>Contact us and we'll get back to<br> you within 24
									hours.
								</b>
							</p>
							<p>
								<span class="glyphicon glyphicon-map-marker"></span> <b>Madurai,
									India</b>
							</p>
							<p>
								<span class="glyphicon glyphicon-phone"></span> <b>+91
									9597680471</b>
							</p>
							<p>
								<span class="glyphicon glyphicon-envelope"></span> <b>mailtojenitak@gmail.com</b>
							</p>
						</div>
						<div class="col-sm-7">
							<div class="row">
								<div class="col-sm-6 form-group">
									<input class="form-control" id="name" name="name"
										placeholder="Name" type="text" required>
								</div>
								<div class="col-sm-6 form-group">
									<input class="form-control" id="email" name="email"
										placeholder="Email" type="email" required>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-sm-12 form-group">
									<button class="btn btn-default right" type="submit">Send</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row-sm-4">
				<footer class="container-fluid text-center"> <br />
				<p>
					<b>Policies: Terms of use | Security | Privacy | Infringement </b>
					<a href="http://www.w3schools.com" title="Visit w3schools">www.memento.com</a>
				</p>
				</footer>
			</div>
		</div>
</body>
</html>
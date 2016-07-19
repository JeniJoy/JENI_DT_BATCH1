<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="resources/images/logo.png">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ek+Mukta">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Bed Room</title>
<style type="text/css">

.container {
	padding: 80px 120px;
}
a:hover {
   background-color: grey;
}
.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}

.btn {
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}
input[type=text] {
    width: 50px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 5px 5px;
    background-repeat: no-repeat;
    padding: 5px 10px 6px 20px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
h1 {
	color: red;
	font-family: "Times New Roman";
	font-style: italic;
}

h2 {
	color: green;
	font-family: "Times New Roman";
	font-style: italic;
}

h3 {
	color: grey;
	font-family: "Times New Roman";
}

.image {
	position: relative;
	width: 100%; /* for IE 6 */
}

h2 {
    color:white;
	font-family: "Times New Roman";
	position: absolute;
	top: 200px;
	background: rgb(0, 0, 0); /* fallback color */
   background: rgba(0, 0, 0, 0.7);
   padding: 10px; 
	left: 0;
	width: 100%;
}
ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
}

ul.pagination li a.active {
    background-color: black;
    color: white;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}


</style>
</head>
<body>
<div class="container-fluid">
		<div class="row">
			<div class="row-sm-4">

				<nav class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="#"> </a>
						</div>
						<ul class="nav navbar-nav">
							<p>
								<img class="img-responsive" alt="jenis"
									src="resources/images/nnn.jpg" width="150px" height="100px">
							</p>
	<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
							<li class="active"><a href="#">Home</a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Furniture <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="living">Living Room</a></li>
									<li><a href="dinner">Dinnig</a></li>
									<li><a href="bed">Bed Room</a></li>
									<li><a href="study">Study Room</a></li>
									<li><a href="kitchen">Kitchen</a></li>
								</ul></li>
							
							
							<li><a href="register"><span
									class="glyphicon glyphicon-user"></span>Register</a></li>
							<li><a href="login"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<input type="text" name="search" class="st-inverse-search-input"
								style="width: 300px;" placeholder="Search..">
							<button type="button" class="btn btn-inverse btn-sm">
								<span class="glyphicon glyphicon-search"></span>Search
							</button>
							<button type="button" class="btn btn-inverse btn-sm">
								<span class="glyphicon glyphicon-shopping-cart"></span>Cart
								<span class="badge">0</span>
							</button>
	</ul>
					</div>
				</nav>
			</div>
			
</div>
	</div>
	<br>
	
	<div class="row-sm-4">
		<div class="container-fluid">
			<br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->

				<div class="carousel-inner" role="listbox">
				<div class="item active"><center>
						<a href="#"><img class="img-responsive" src="resources/images/b1234.jpg"
							alt="Flower" ></a></center>
					</div>
					<div class="item"><center>
						<a href="#"><img class="img-responsive" src="resources/images/b111.jpg"
							alt="Flower"></a></center>
					</div>

					<div class="item"><center>
						<a href="#"><img class="img-responsive" src="resources/images/b2222.jpg"
							alt="Flower"></a></center>
					</div>
					<div class="item"><center>
						<a href="#"><img class="img-responsive" src="resources/images/b6789.jpg"
							alt="Flower"></a></center>
					</div>
					</center>
				</div>
			</div>
		</div>
	</div>
	</div>
	<br><br><br>
	<div class="container-fluid text-Left">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<h3>
					<strong>Narrow Results</strong>
				</h3>
				<br>
				<p>
				<h4>CATEGORY</h4>
				</p>
				<br>
				<h5>Living Room(15)</h5>
				<hr>

				<strong>Price</strong><br> <input type="checkbox" name="h"
					value="ON" />Under $50(12)<br>
				<hr>
				<strong>Style</strong><br> <input type="checkbox" name="h"
					value="ON" />Modern(11)<br>
				<hr>
				<center>
					<p>
						<a href="#">SEATING</a>
					</p>
				</center>

				<p>Sofas</p>
				<p>SofaSet</p>
				<p>SofaSecctional</p>
				<p>Recliners</p>
				<p>Futons</p>
				<p>Settees</p>
				<p>Pouffes</p>
				<p>BeanBags</p>
				<center>
					<p>
						<a href="#">STORAGE</a>
					</p>
				</center>
				<p>Cabinets & Sideboards</p>
				<p>Entertainment Units</p>
				<p>Display Units</p>
				<p>Shoe Racks</p>
				<p>Magazine Racks</p>
				<p>Trunks & Boxes</p>
				<center>
					<p>
						<a href="#">CHAIRS</a>
					</p>
				</center>
				<p>Arm Chairs</p>
				<p>Wing Chairs</p>
				<p>Accent Chairs</p>
				<p>Metal Chairs</p>
				<p>Floding Chairs</p>
				<center>
					<p>
						<a href="#">TABLES</a>
					</p>
				</center>
				<p>CoffeeTable-Large</p>
				<p>CoffeeTable-Small</p>
				<p>Coffee Table Sets</p>
				<p>Set of Tables</p>
				<p>End Tables</p>
				<p>Console Tables</p>
			</div>
			<div class="col-sm-10 text-left">

				<div class="row-sm-4">
					<div class=bg-1>
						<div class="container-fluid">
							<div class="row text-center">

								<h1>
									<b>A fresh start, everyday.</b>
								</h1>
								<h3>Unlimited Choices. Unbeatable Prices. Free Shipping.</h3></div>
							<br> <br>
							<div class="row text-center">
								<div class="col-sm-3">
									<div class="thumbnail">
										<a href="#"><img class="img-responsive" src="resources/images/b0.jpg"
											alt="New York"></a>
										<p>
										<h4>Linen Trunks</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<a href="#"><img class="img-responsive" src="resources/images/b1.jpg"
											alt="New York"></a>
										<p>
										<h4>Mattresses</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<a href="#"><img class="img-responsive" src="resources/images/b2.jpg"
											alt="New York"></a>
										<p>
										<h4>Bed Room Sets</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
									
										<a href="#"><img class="img-responsive" src="resources/images/b222.jpg"
											alt="San Francisco"></a>
										<p>
										<h4>Dressing Tables</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<a href="#"><img class="img-responsive" src="resources/images/b3.jpg"
											alt="San Francisco"></a>
										<p>
										<h4>Chest of Drawers</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<a href="#"><img class="img-responsive" src="resources/images/b4.jpg"
											alt="San Francisco"></a>
										<p>
										<h4>Bed Side Tables</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail"><p>
									<a href="#">
<img class="img-responsive" src="resources/images/b5.jpg"
											alt="San Francisco">
</a></p>
										
										<p>
										<h4>Wardrobes</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<a href="#"><img class="img-responsive" src="resources/images/b6.jpg"
											alt="San Francisco"></a>
										<p>
										<h4>Beds</h4>
										</p>
										<span style="color: red">view more</span>
									</div>
								</div>
								<br> <br> <br>
								<div class="col-sm-6">
									<div class="thumbnail">
										<div class="image">
											<a href="#"><img class="img-responsive" src="resources/images/m00.jpg"
												alt="San Francisco"></a>
											<h2><span>Lumbernotes</span></h2>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="thumbnail">
										<div class="image">
											<a href="#"><img class="img-responsive" src="resources/images/m0.jpg"
												alt="San Francisco"></a>
											<h2><span>Impreial Alert</span></h2>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="thumbnail">
										<div class="image">
											<a href="#"><img class="img-responsive" src="resources/images/m99.jpg"
												alt="San Francisco"></a>
											<h2><span>Chivalric Exhibit</span></h2>
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="thumbnail">
										<div class="image">
											<a href="#"><img class="img-responsive" src="resources/images/mii.jpg"
												alt="San Francisco"></a>
											<h2><span>White illusions</span></h2>
										</div>
									</div>
								</div>
					<a href="#"><ul class="pagination">
  <li><a href="#">&laquo;</a></li>
  <li><a href="#">1</a></li>
  <li><a class="active" href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">6</a></li>
  <li><a href="#">&raquo;</a></li>
</ul></a>
 
  <br><br><br>
 
  <div class="jumbotron">
    <h5><b>Buy Wooden Furniture Online</b></h5> 
    <h5>Buy furniture online @ Jenis - India's largest home shopping destination offering a wide range of home and office furniture online.  Choosing the right furniture for your home online will add elegance and functionality to your interior decor, while it will also be cost effective and long lasting at the same time. Enjoy fast shipping as well as cash on delivery at our online store.</h5>
    <br>
    <h5>Classy Furniture only at Jenis</h5>
    <h5>Buy living room furniture online in India only at Jenis.com. We house furniture pieces that can revamp your whole home and make it look more attractive. Shopping at Jenis.com is easier; our handy filters help you in landing at the exact product you are looking for. Browse through an extensive collection with the click of a button and avoid all the hassle of shopping in several shops. Pay through one of our several payment options and enter your shipping address. Now, sit back and relax as the product will be delivered to you within no time. So what are you waiting for! Avail discounts & offers on wide range of furniture, home decor, home furnishing, lamps & lighting, kitchen & dining, Hardware & electricals, bed & bath accessories, housekeeping and kids, that suit your need.</h5>
 
  </div>
</body>
</html>
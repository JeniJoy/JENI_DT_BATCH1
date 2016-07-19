<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dining Room</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style type="text/css">
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

.container {
	padding: 80px 120px;
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
h1{
color:red;
font-family:"Times New Roman";
font-style:italic;}

h2 {
	color: green;
	font-family:"Times New Roman";
    font-style:italic;
}
h3 {
	color: grey;
	font-family:"Times New Roman";
}
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
									src="resources/images/logo-orange.svg">
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
							<li><a href="#">HouseKeeping</a></li>
							<li><a href="#">Garden</a></li>
							<li><a href="#">Furnishing</a></li>
							<li><a href="#">Iteriors</a></li>
							<li><a href="#">Kids</a></li>
							
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
						<img class="img-responsive" src="resources/images/d3333.jpg"
							alt="Flower" ></center>
					</div>
					<div class="item"><center>
						<img class="img-responsive" src="resources/images/d1111.jpg"
							alt="Flower"></center>
					</div>

					<div class="item"><center>
						<img class="img-responsive" src="resources/images/d2222.jpg"
							alt="Flower"></center>
					</div>
					<div class="item"><center>
						<img class="img-responsive" src="resources/images/d4444.jpg"
							alt="Flower"></center>
					</div>
					</center>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="container-fluid text-Left">
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <h3><strong>Narrow Results</strong></h3>
    <br>
    <p><h4> CATEGORY</h4></p><br>
    <h5>Living Room(15)</h5>
    <hr>
    
    <strong>Price</strong><br>
     <input type="checkbox" name="h" value="ON" />Under $50(12)<br>
     <hr>
      <strong>Style</strong><br>
     <input type="checkbox" name="h" value="ON" />Modern(11)<br>
     <hr>
       <center><p><a href="#">SEATING</a></p></center>
     
      <p>Sofas</p>
      <p>SofaSet</p>
      <p>SofaSecctional</p>
      <p>Recliners</p>
      <p>Futons</p>
      <p>Settees</p>
      <p>Pouffes</p>
      <p>BeanBags</p>
      <center><p><a href="#">STORAGE</a></p></center>  
      <p>Cabinets & Sideboards</p>
      <p>Entertainment Units</p>
      <p>Display Units</p>
      <p>Shoe Racks</p>
      <p>Magazine Racks</p>
      <p>Trunks & Boxes</p>
     <center> <p><a href="#">CHAIRS</a></p></center>
      <p>Arm Chairs</p>
      <p>Wing Chairs</p>
      <p>Accent Chairs</p>
      <p>Metal Chairs</p>
      <p>Floding Chairs</p>
     <center>  <p><a href="#">TABLES</a></p></center>
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
	
					<h1><b>Let's Eat!</b></h1>
					<p>
					<h3>Unlimited Choices. Unbeatable Prices. Free Shipping.</h3>
					</p>
				</div>
				<br> <br>
				<div class="row text-center">
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di1.jpg"
								alt="New York">
							<p>
								<h4>Bottles</h4>
							</p>
							<p>STORE AND POUR</p>
							<p>Shop starting Rs. 279</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di2.jpg"
								alt="New York" >
							<p>
								<h4>Mugs</h4>
							</p>
							<p>A SIP OF PARADISE</p>
<p>Shop starting Rs. 139</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di3.jpg"
								alt="New York">
							<p>
								<h4>Trays & Platters</h4>
							</p>
							<p>
FIRST COME, FIRST SERVED</p>
<p>Shop starting Rs. 299</p>
						</div><br>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di4.jpg"
								alt="San Francisco">
							<p>
								<h4>Cutlery</h4>
							</p><p>
BEAUTIFULLY DESIGNED SETS</p>
<p>Shop starting Rs. 109</p>
								</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di5.jpg"
								alt="San Francisco">
							<p>
								<h4>Teapots & Kettles</h4>
							</p><p>
I LIKE MY BEVERAGE HOT!</p>
<p>Shop starting Rs 419</p>
								</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di6.jpg"
								alt="San Francisco">
							<p>
								<h4>Plates</h4>
							</p><p>
WHERE'S MY FOOD!</p>
<p>Shop starting Rs. 269</p>
								</div>
					</div><br>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di7.jpg"
								alt="San Francisco">
							<p>
								<h4>Cups & Saucer</h4>
							</p><p>
TIME FOR A SHORT BREAK</p>
<p>Shop starting Rs. 269</p>
								</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di8.jpg"
								alt="San Francisco">
							<p>
								<h4>Casseroles</h4>
							</p><p>
FOR HOT AND TASTY MEALS</p>
<p>Shop starting Rs. 319</p>
								</div>
					</div>
					<div class="col-sm-4">
						<div class="thumbnail">
							<img class="img-responsive" src="resources/images/di9.jpg"
								alt="San Francisco">
							<p>
								<h4>Dinner Sets</h4>
							</p><p>
DINE IN ELEGANCE</p>
<p>Shop starting Rs. 299</p>
								</div>
					</div>
					<br><br><br>
</body>
</html>
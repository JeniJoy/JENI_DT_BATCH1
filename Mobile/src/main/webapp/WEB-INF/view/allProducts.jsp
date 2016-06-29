<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>List Product</title>


<style>
table, th , td  {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #ffffff;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}



body {
	background-image: url("resources/images/jm.jpg"),
		url("tooplate_content_middle.png");
}

nav
{
   position: fixed;
   position:absolute;
   top: 0;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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
					
					Slider<br/>
To view all products <a href="allProducts">Click Here..</a>
					
			</div>
		</div>



		<div class="row-md-4">

			<nav class="navbar navbar-default navbar-fixed-top" >
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"><span
						class="glyphicon glyphicon-home"></span></a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><b>Home</b></a></li>
					<li class="dropdown" ><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>Categories</b> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="cat1">Smart Phones</a></li>
							<li><a href="cat2">Feature Phones</a></li>
							<li><a href="cat3">Refurbished Phones</a></li>
						</ul></li>
					<li><a href="#"><b>About us</b></a></li>
					<li><a href="#"><b>Gift Cards</b></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span><b>
							Sign Up</b></a></li>
					<li><a href="Login"><span
							class="glyphicon glyphicon-log-in"></span> <b>Login</b></a></li>
				</ul>
			</div>
			</nav>



<div ng-app="myApp" ng-controller="customersCtrl"> 
<p><input type="text" name="search" ng-model="test" class="st-default-search-input" style="width: 300px;" />
<button type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-search"></span> Search
    </button></p>

<table class="table table-hover">
 <tr class="danger">
        <th>ID</th>
        <th>NAME</th>
        <th>DESCRIPTION</th>
        <th>PRICE</th>
      </tr>
  <tr ng-repeat="x in names | filter:test">
   
    <td>{{ x.pid }}</td>
    <td>{{ x.pname }}</td>
    <td>{{ x.pdesc }}</td>
    <td>{{ x.price }}</td>
    </tr>
  
</table>

</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope) {
	
	$scope.names=${data};
	});
</script>

</body>
</html>
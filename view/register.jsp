<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="resources/images/logo.png">
<title>Registration</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  /* CSS reset */
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td { 
	margin:0;
	padding:0;
}
html,body {
	margin:0;
	padding:0;
	height: 100%;
	background-image:url("resources/images/hu.jpg");
}
table {
	border-collapse:collapse;
	border-spacing:0;
}
img { 
	border:0;
}
address,caption,cite,code,dfn,th,var {
	font-style:normal;
	font-weight:normal;
}
ol,ul {
	list-style:none;
}
caption,th {
	text-align:left;
}
h1,h2,h3,h4,h5,h6 {
	font-size:100%;
	font-weight:normal;
}
header{
	display: block;
}
/* General Demo Style */
body{
	font-family: Cambria, Palatino, "Palatino Linotype", "Palatino LT STD", Georgia, serif;

	font-weight: 400;
	font-size: 15px;
	color: #3a2127;
	overflow-y: scroll;
	background-image:url("resources/images/hu.jpg");
}
a{
	color: #333;
	text-decoration: none;
}
.container{
	width: 100%;
	height: 100%;
	position: relative;
}
.clr{
	clear: both;
}
.container > header{
	padding: 20px 30px 20px 30px;
	margin: 0px 20px 10px 20px;
	position: relative;
	display: block;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
    text-align: center;
}
.container > header h1{
	position: relative;
	color: #498ea5;
	font-weight: 700;
	font-style: normal;
	font-size: 30px;
	padding: 0px 0px 5px 0px;
	text-shadow: 0px 1px 1px rgba(255,255,255,0.8);
}
.container > header h1 span{
	font-family: 'Alegreya SC', Georgia, serif;
	font-size: 20px;
	line-height: 20px;
	display: block;
	font-weight: 400;
	font-style: italic;
	color: #719dab;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.1);
}
.container > header h2{
	font-size: 16px;
	font-style: italic;
	color: #2d6277;
	text-shadow: 0px 1px 1px rgba(255,255,255,0.8);
}
/* Header Style */
.freshdesignweb-top{
	line-height: 24px;
	font-size: 11px;
	background: rgba(0, 0, 0, 0.05);
	text-transform: uppercase;
	z-index: 9999;
	position: relative;
	box-shadow: 1px 0px 2px rgba(0,0,0,0.2);
}
.freshdesignweb-top a{
	padding: 0px 10px;
	letter-spacing: 1px;
	color: #333;
	text-shadow: 0px 1px 1px #fff;
	display: block;
	float: left;
}
.freshdesignweb-top a:hover{
	background: #fff;
}
.freshdesignweb-top span.right{
	float: right;
}
.freshdesignweb-top span.right a{
	float: left;
	display: block;
}
.freshdesignweb-demos{
    text-align:center;
	display: block;
	line-height: 30px;
	padding: 20px 0px;
}
.freshdesignweb-demos a{
    display: inline-block;
	margin: 0px 4px;
	padding: 0px 4px;
	color: #fff;
	line-height: 20px;	
	font-style: italic;
	font-size: 13px;
	border-radius: 3px;
	background: rgba(41,77,95,0.1);
	-webkit-transition: all 0.2s linear;
	-moz-transition: all 0.2s linear;
	-o-transition: all 0.2s linear;
	-ms-transition: all 0.2s linear;
	transition: all 0.2s linear;
}
.freshdesignweb-demos a:hover{
	background: rgba(41,77,95,0.3);
}
.freshdesignweb-demos a.current,
.freshdesignweb-demos a.current:hover{
	background: rgba(41,77,95,0.3);
}
/*
http://www.freshdesignweb.com/beautiful-registration-form-with-html5-and-css3.html
*/

.form{
	background:#f1f1f1; width:470px; margin:0 auto; padding-left:50px; padding-top:20px;
}
.form fieldset{border:0px; padding:0px; margin:0px;}
.form p.contact { font-size: 12px; margin:0px 0px 10px 0;line-height: 14px; font-family:Arial, Helvetica;}

.form input[type="text"] { width: 400px; }
.form input[type="email"] { width: 400px; }
.form input[type="password"] { width: 400px; }
.form input.birthday{width:60px;}
.form input.birthyear{width:120px;}
.form label { color: #000; font-weight:bold;font-size: 12px;font-family:Arial, Helvetica; }
.form label.month {width: 135px;}
.form input, textarea { background-color: rgba(255, 255, 255, 0.4); border: 1px solid rgba(122, 192, 0, 0.15); padding: 7px; font-family: Keffeesatz, Arial; color: #4b4b4b; font-size: 14px; -webkit-border-radius: 5px; margin-bottom: 15px; margin-top: -10px; }
.form input:focus, textarea:focus { border: 1px solid #ff5400; background-color: rgba(255, 255, 255, 1); }
.form .select-style {
  -webkit-appearance: button;
  -webkit-border-radius: 2px;
  -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
  -webkit-padding-end: 20px;
  -webkit-padding-start: 2px;
  -webkit-user-select: none;
  background-image: url(images/select-arrow.png), 
    -webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
  background-position: center right;
  background-repeat: no-repeat;
  border: 0px solid #FFF;
  color: #555;
  font-size: inherit;
  margin: 0;
  overflow: hidden;
  padding-top: 5px;
  padding-bottom: 5px;
  text-overflow: ellipsis;
  white-space: nowrap;}
.form .gender {
  width:410px;
  }
.form input.buttom{ background: #4b8df9; display: inline-block; padding: 5px 10px 6px; color: #fbf7f7; text-decoration: none; font-weight: bold; line-height: 1; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: 0 1px 3px #999; -webkit-box-shadow: 0 1px 3px #999; box-shadow: 0 1px 3px #999; text-shadow: 0 -1px 1px #222; border: none; position: relative; cursor: pointer; font-size: 14px; font-family:Verdana, Geneva, sans-serif;}
.form input.buttom:hover	{ background-color: #2a78f6; }

  </style>
</head>
<body style="background-image: resources/images/hu.jpg";>
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
							<li>
                    <a href="allcatagories">All Catagories</a>
                </li>
							
							<li><a href="register"><span
									class="glyphicon glyphicon-user"></span>Register</a></li>
							<li><a href="login"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</ul>
						
						<ul class="nav navbar-nav navbar-right">
							<input type="text" name="search" class="st-inverse-search-input"
								style="width: 300px;" />
							<button type="button" class="btn btn-inverse btn-sm">
								<span class="glyphicon glyphicon-search"></span>Search
							</button>
							<button type="button" class="btn btn-inverse btn-sm">
								<span class="glyphicon glyphicon-shopping-cart"></span>Cart
							</button>
	</ul>
					</div>
				</nav>
			</div>
			
</div>
	</div>
<div class="container">
			<!-- freshdesignweb top bar -->
            <div class="freshdesignweb-top">
               
                <div class="clr"></div>
            </div><!--/ freshdesignweb top bar -->
			<header>
				<h1>Registration Form </h1>
            </header>       
      <div  class="form">
    		 
    		<form:form method="POST"  commandName="regvalidation" action="saveregistration">
    		<p class="contact"><form:label path="fname">First Name</form:label></p>
    		<form:input path="fname" placeholder="First Name" value="" required="" tabindex="1" type="text"/><font color="RED"><form:errors path="fname" /></font>
    			
    			<p class="contact"><form:label path="lname">Last Name</form:label></p>
    		<form:input path="lname" placeholder="Last Name" value="" required="" tabindex="1" type="text"/><font color="RED"><form:errors path="lname" /></font>
    		
    			<p class="contact"><form:label path="email">Email</form:label></p>
    		<form:input path="email" placeholder="example@domain.com" value="" required="" tabindex="1" type="email"/><font color="RED"><form:errors path="email" /></font>
    			
    			 <p class="contact"><form:label path="uname">Create a username</form:label></p>
    		<form:input path="uname" placeholder="username" value="" required="" tabindex="2" type="text"/><font color="RED"><form:errors path="uname" /></font>
    		
    			
        <p class="contact"><form:label path="pwd">Create a password</form:label></p>
    		<form:input path="pwd"  value="" required=""  type="password"/><font color="RED"><form:errors path="pwd" /></font>
    			 
            <select class="select-style gender" name="gender">
            <option value="select">i am..</option>
            <option value="m">Male</option>
            <option value="f">Female</option>
            <option value="others">Other</option>
            </select><br><br>
            
             <p class="contact"><form:label path="phone">Mobile phone</form:label></p>
    		<form:input path="phone" placeholder="phone number" value="" required="" tabindex="5" type="text"/><font color="RED"><form:errors path="phone" /></font><br>
           
            
            <input class="buttom" name="submit" id="submit" tabindex="5" value="Sign me up!" type="submit"> 	 
  </form:form>
   <script type="text/javascript">$('#myForm').validator()</script>
</div>      
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BooksDeal</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}



.container {
	width: 500px;
	height: 400px;
	background-color:#000;
	margin: 0px auto;
	text-align: center;
	margin-top: 150px;
	border-radius: 5px;
	opacity:.5;
}

input[type="text"], [type="password"] {
	width: 300px;
	height: 45px;
	font-size: 17px;
	margin-bottom: 20px;padding-left: 30px;
	background: #fff;
	border: none;
}

.login {
	border: none;
	padding: 15px 20px;
	background:#2ecc71;
	border-radius: 5px;
	border-bottom: 5px solid#27AE60;
}
</style>
</head>
<body style="background-image(resources/images/bg3.jpg);">

	<div class="container">
		<form action="Servlet1" method="post">
			<div class="form-input"><br><br><br><br><br>
				<input type="text" name="username" placeholder="Enter your name">
			</div>
			<div class="form-input">
				<input type="password" name="password"
					placeholder="Enter your password">
			</div>
			<div class="form-input">
			<input type="submit" value="Login" name="submit" class="login"><br>
			</div>
			<a href="#">Forget Password?</a>
		</form>
	</div>


</body>
</html>
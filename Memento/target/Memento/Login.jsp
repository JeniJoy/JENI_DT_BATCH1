<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login here</title>

<style>
* {
	margin: 0px;
	padding: 0px;
}

body {
	background-image:url("resources/images/kkj.jpg"),url("resources/images/uu.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}

.container {
	width: 500px;
	height: 400px;
	background-color:#000;
	margin: 0px auto;
	text-align: center;
	margin-top: 150px;
	border-radius: 5px;
	opacity:.7;
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
	background-color:"pink";
	border-radius: 5px;
	
}
</style>
</head>
<body>
<div class="container">
		<form action="Home.html" method="host">
			<div class="form-input"><br><br><br><br><br>
				<input type="text" name="user name" placeholder="Enter your name">
			</div>
			<div class="form-input">
				<input type="password" name="password"
					placeholder="Enter your password">
			</div>
			<div class="form-input">
			<input type="submit" value="Login" name="submit" class="login"><br>
			</div><br>
			<a href="#">Forget Password?</a>
		</form>
	</div>

</body>
</html>
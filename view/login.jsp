<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
 
<html lang="en"><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="resources/images/logo.png">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
    <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>

    <style>
	/*! normalize.css v4.0.0 | MIT License | github.com/necolas/normalize.css */
	html{font-family:Times New Roman;font-style:italic;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,main,menu,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block}audio:not([controls]){display:none;height:0}progress{vertical-align:baseline}template,[hidden]{display:none}a{background-color:transparent}a:active,a:hover{outline-width:0}abbr[title]{border-bottom:none;text-decoration:underline;text-decoration:underline dotted}b,strong{font-weight:inherit}b,strong{font-weight:bolder}dfn{font-style:italic}h1{font-size:2em;margin:0.67em 0}mark{background-color:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sub{bottom:-0.25em}sup{top:-0.5em}img{border-style:none}svg:not(:root){overflow:hidden}code,kbd,pre,samp{font-family:monospace, monospace;font-size:1em}figure{margin:1em 40px}hr{box-sizing:content-box;height:0;overflow:visible}button,input,select,textarea{font:inherit;margin:0}optgroup{font-weight:bold}button,input,select{overflow:visible}button,select{text-transform:none}button,[type="button"],[type="reset"],[type="submit"]{cursor:pointer}[disabled]{cursor:default}button,html [type="button"],[type="reset"],[type="submit"]{-webkit-appearance:button}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}button:-moz-focusring,input:-moz-focusring{outline:1px dotted ButtonText}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em}legend{box-sizing:border-box;color:inherit;display:table;max-width:100%;padding:0;white-space:normal}textarea{overflow:auto}[type="checkbox"],[type="radio"]{box-sizing:border-box;padding:0}[type="number"]::-webkit-inner-spin-button,[type="number"]::-webkit-outer-spin-button{height:auto}[type="search"]{-webkit-appearance:textfield}[type="search"]::-webkit-search-cancel-button,[type="search"]::-webkit-search-decoration{-webkit-appearance:none}

	@import url(http://fonts.googleapis.com/css?family=Lobster);

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  -webkit-user-select:none;
     -moz-user-select:none;
      -ms-user-select:none;
          user-select:none;
}

body {
  background: hsla(255, 255%, 255%, 1);
  font: 100%/1 'Lobster', cursive;
  background-image:url("resources/images/by.jpg");
}

.login {
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -10rem 0 0 -10rem;
  width: 20rem;
  height: 20rem;
  padding: 3em;
  background: hsla(255,255%,255%,1);
  border-radius: 50%;
  overflow: hidden;
  -webkit-transition: all 1s ease;
  transition:all 1s ease;
}
.login:hover > .header, .login.clicked > .header {
  width: 2rem;
}
.login:hover > .header > .text, .login.clicked > .header > .text {
  font-size: 1rem;
  -webkit-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
.login.loading > .header {
  width: 20rem;
  -webkit-transition: all 1s ease;
  transition:all 1s ease;
}
.login.loading > .header > .text {
  display: none;
}
.login.loading > .header > .loader {
  display: block;
}
.header {
  position: absolute;
  left: 0;
  top: 0;
  z-index: 1;
  width: 20rem;
  height: 20rem;
  background: hsla(0, 5%, 0%, 1);
  -webkit-transition: width 0.5s ease-in-out;
  transition: width 0.5s ease-in-out;
}
.header > .text {
  display: block;
  width: 100%;
  height: 100%;
  font-size: 5rem;
  text-align: center;
  line-height: 20rem;
  color: hsla(255,255%,255%,1);
  -webkit-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
}
.header > .loader {
  display: none;
  position: absolute;
  left: 5rem;
  top: 5rem;
  width: 10rem;
  height: 10rem;
  border-left: 10px solid hsla(255, 255%, 255%, 1);
  border-bottom:10px solid hsla(255,255%,255%,1);
  border-right:10px solid hsla(255,255%,255%,1);
  border-top: 8px solid hsla(255,255%,255%,1);
  border-radius: 50%;
  box-shadow:inset 2px 2px 2px 2px hsla(0, 5%, 0%, 1);
  -webkit-animation: loading 2s linear infinite;
          animation: loading 2s linear infinite;
}
.header > .loader:after {
  content: "";
  position: absolute;
  left: 4.15rem;
  top: -0.5rem;
  width: 1rem;
  height: 1rem;
  background: hsla(1, 75%, 55%, 1);
  border-radius: 50%;
  border-right: 1px solid hsla(1, 75%, 55%, 1);
  
}
.header > .loader:before {
  content: "";
  position: absolute;
  left: 3.4rem;
  top: -0.5rem;
  width: 0;
  height: 0;
  border-right: 1rem solid hsla(1, 75%, 55%, 1);
  border-top: 0.5rem solid transparent;
  border-bottom: 0.5rem solid transparent;
}

@-webkit-keyframes loading {
  50% {
  border-left: 10px solid hsla(1, 95%, 25%, 1);
  border-bottom:10px solid hsla(1, 95%, 25%, 1);
  border-right:10px solid hsla(1, 95%, 25%, 1);
  border-top:8px solid hsla(1, 95%, 25%, 1);  
  }

  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}

@keyframes loading {
  50% {
  border-left: 10px solid hsla(1, 95%, 25%, 1);
  border-bottom:10px solid hsla(1, 95%, 25%, 1);
  border-right:10px solid hsla(1, 95%, 25%, 1);
  border-top:8px solid hsla(1, 95%, 25%, 1);  
  }

  100% {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
.form {
  margin: 0 0 0 2rem;
  padding: 0.5rem;
}

.input {
  display: block;
  width: 100%;
  font-size: 2rem;
  padding: 0.5rem 1rem;
  box-shadow: none;
  border-color: hsla(0, 5%, 0%, 1);
  border-width: 0 0 3px 0;
  -webkit-transition: all .5s ease-in;
  transition: all .5s ease-in;
  outline:transparent;
}
.input + .input {
  margin: 10px 0 0;
}
.input:focus {
  border-bottom: 3px solid hsla(1, 75%, 55%, 1);
}

.btn {
  position: absolute;
  right: 7.8rem;
  bottom: 3rem;
  width: 4rem;
  height: 4rem;
  border: none;
  background: hsla(255, 255%, 255%, 1);
  font-size: 0;
  border: none;
  -webkit-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
.btn:after {
  content: "";
  position: absolute;
  left: 1.4rem;
  top: 1rem;
  width: 0;
  height: 0;
  border-left: 1.6rem solid hsla(1, 75%, 55%, 1);
  border-top: .8rem solid transparent;
  border-bottom: .8rem solid transparent;
  -webkit-transition: border 0.3s ease-in-out 0s;
  transition: border 0.3s ease-in-out 0s;
}
.btn:hover, .btn:focus, .btn:active {
  outline: none;
  
}
.btn:hover:after, .btn:focus:after, .btn:active:after {
  border-left-color: hsla(0, 5%, 0%, 1);
}
.resetbtn{
  margin:1%;
  border:none;
  padding:.5em;
  width:5em;
  background:hsla(0,0%,0%,1);
  color:hsla(255,255%,255%,1);
  font-size:1.5em;
  border-radius:2px;
  -webkit-transition: all 1s ease-in-out;
  transition:all 1s ease-in-out;
  outline:none;
  box-shadow:0 0 1px 1px hsla(0,0%,0%,0.2);
}
.resetbtn:hover, .resetbtn:focus{
  background:hsla(255,255%,255%,1);
  color:hsla(0,0%,0%,1);
  outline:5px solid hsla(0,0%,0%,1);
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
									src="resources/images/nnn.jpg" width="150px" height="100px">
							</p>
	<li style="font-size:medium;"><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
							<li class="active" style="font-size:medium;"><a href="#">Home</a></li>
							<li class="dropdown" style="font-size:medium;"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Furniture <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="living">Living Room</a></li>
									<li><a href="dinner">Dinnig</a></li>
									<li><a href="bed">Bed Room</a></li>
									<li><a href="study">Study Room</a></li>
									<li><a href="kitchen">Kitchen</a></li>
								</ul></li>
 							
							<li><a href="register" style="font-size:medium;"><span
									class="glyphicon glyphicon-user"></span>Register</a></li>
							<li><a href="login" style="font-size:medium;"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
									<li>
                    <a href="allcatagories" style="font-size:medium;">All Catagories</a>
                </li>
						</ul>
		
					</div>
				</nav>
			</div>
			
</div>
	</div>
	 <div class="login">
  <header class="header">
    <span class="text">LOGIN</span>
    <span class="loader"></span>
  </header>
  <form class="form-signin" name="f" action="<c:url value='j_spring_security_check'/>"
                    method="POST"> 
    <input class="input" type="text" name='j_username' placeholder="Username">
    <input class="input" type="password" name='j_password' placeholder="Password">
    <button class="btn" type="submit"></button>
  </form>
</div>
<button class ="resetbtn" type= "reset" name="reset">Reset it
</button><br><br>
<a href="index" style="font-size:medium;">Back to Home</a>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>
        
	
</body>
</html>
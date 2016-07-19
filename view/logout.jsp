<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="resources/images/logo.png">
<title>Insert title here</title>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<style type="text/css">
#background{
width:auto;
height:auto;
}
</style>
</head>
<body  background="resources/images/logout.jpg">

<h1>
<%session.invalidate();%>
<font color="white">You are now logged out!!
 
<a href="login" >GoBack</a>
</font>
</h1>
</body>
</html>
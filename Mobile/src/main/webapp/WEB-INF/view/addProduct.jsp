<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<sp:form action="saveProduct" method="post">

		<br />
		<sp:label path="pname">Product Name:</sp:label>
		<sp:input path="pname" value="${productbean.pname}" />
		<br />
		<sp:label path="pdesc">Product Desc:</sp:label>
		<sp:input path="pdesc" value="${productbean.pname}"  />
		<br />
		<sp:label path="price">Product Price:</sp:label>
		<sp:input path="price" value="${productbean.pname}"  />
		<br />
		<input type="submit" value="SAVE" />
	</sp:form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String email = (String)request.getParameter("email");
	String password = (String) request.getParameter("password");
	out.println(email);
	out.println(password);
	// Check wheather the password is correct or not
%>
</body>
</html>
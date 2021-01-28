<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
 <meta name="google-signin-client_id" content="794853829820-88a6t0vvn6eacm1j3v9f82g9ko384l9q.apps.googleusercontent.com">
	<title>Insert title here</title>
 	
</head>
<body>
	<%
String name=(String)request.getParameter("name");
String email=(String)request.getParameter("email");
String id=(String)request.getParameter("id");
//out.println(name);
//out.println(email);
//out.println(id);
//HttpSession session = request.getSession();
session.setAttribute("id",id);
session.setAttribute("name",name);
session.setAttribute("email",email);
response.sendRedirect("dashboard.jsp");
%>


</body>
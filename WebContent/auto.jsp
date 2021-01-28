<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %> 
<%!String buffer=""; %>
<%

String name = request.getParameter("name").toString();

try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/workbooks", "root", "sam12345");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from employee_namw where name like '"+name+"%'");
while(rs.next())
{
buffer="<option>";
buffer=buffer+rs.getString("name")+"<br>";
}
buffer=buffer+" </option>";  
response.getWriter().println(buffer+"");
}
catch (Exception e) {
System.out.println(e);
}
%>
</body>
</html>
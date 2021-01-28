<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
private static String dbUrl = "jdbc:mysql://localhost:3306/workbooks?autoReconnect=true&useSSL=false";
private static String dbUname = "root";
private static String dbPassword = "sam12345";
private static String dbDriver = "com.mysql.jdbc.Driver";
private static Connection con = null;
//jdbc:mysql://localhost:3306/Peoples?autoReconnect=true&useSSL=false
%>
	<%
	 String name=request.getParameter("msg");
	if(!name.equals(" "))
	{
		try
		{
			Class.forName(dbDriver);
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
			String sql = "select name from employee_namw where name like ?";
			PreparedStatement ps;
			try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			 ResultSet rs=ps.executeQuery();
	         String val="";
	         while(rs.next())
	         {
	             val=val+"  "+rs.getString("name");
	         }
	         out.println("<h1>"+val+"</h1>");
	         
	         if(val==""){

	             out.println("<h3>Match Not Found</h3>");
	         }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				   out.println("     "+e);
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			   out.println("     "+e);
			e.printStackTrace();
		}
	}

	%>
</body>
</html>
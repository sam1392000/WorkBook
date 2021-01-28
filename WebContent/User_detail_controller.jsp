
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
<%
	String name =(String) request.getParameter("name");
	String Email = (String)request.getParameter("email");
	String number =(String) request.getParameter("number");
	String company_name =(String) request.getParameter("Company_Name");
	String company_description =(String) request.getParameter("Company_Description");
	String Company_links =(String) request.getParameter("company_link");
	String address =(String) request.getParameter("address");
	String city  =(String) request.getParameter("city");
	String state =(String) request.getParameter("state");
	String date = (String)request.getParameter("date");
	String id = (String)session.getAttribute("id");
	out.println("name : "+name);
	out.println("Email : "+Email);
	out.println("Number : "+number);
	out.println("Company_name : "+company_name);
	out.println("company_description : "+company_description);
	out.println("Company_links : "+Company_links);
	out.println("address : "+address);
	out.println("city : "+city);
	out.println("state : "+state);
	out.println("DOB : "+date);
	insert(id,name,Email,number,date,company_name,company_description,Company_links,address,state,city);

%>
<%!
private static String dbUrl = "jdbc:mysql://localhost:3306/workbooks";
private static String dbUname = "root";
private static String dbPassword = "sam12345";
private static String dbDriver = "com.mysql.jdbc.Driver";
public static void loadDriver(String dbDriver)
{
	try
	{
		Class.forName(dbDriver);
	} catch (ClassNotFoundException e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public static Connection getConnection()
{
	Connection con = null;
	try {
		con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
}
static void insert(String id,String name,String Email,String number,String date,String company_name,String company_description,String Company_links,String address , String state,String city)throws Exception
{
	loadDriver(dbDriver);
	Connection con = getConnection();
	String sql = "insert into employeer values(?,?,?,?,?,?,?,?,?,?,?)";
	
	PreparedStatement ps;
	try {
	ps = con.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, Email);
	ps.setString(4, number);
	ps.setString(5, date);
	ps.setString(6, company_name);
	ps.setString(7, company_description);
	ps.setString(8, Company_links);
	ps.setString(9, address);
	ps.setString(10,state);
	ps.setString(11 , city);
	ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
%>
</body>
</html>
<%

	String job = (String)request.getParameter("job_name");
	String job_description = (String) request.getParameter("job_description");
	String email = (String)request.getParameter("email");
	String phno = (String) request.getParameter("number");
	String address = (String) request.getParameter("address");
	String city = (String)request.getParameter("city");
	String jobpost = (String)request.getParameter("job_type");
	String state = (String)request.getParameter("state");
	int bid_amount = Integer.parseInt((String)request.getParameter("bid_amount"));
	int days = Integer.parseInt((String)request.getParameter("days"));
	int people = Integer.parseInt((String)request.getParameter("people"));
	//String date = (String)request.getParameter("date");
	
	out.println(job);
	out.println(job_description);
	out.println(jobpost);
	
%>
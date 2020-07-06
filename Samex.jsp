<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
	String fno = request.getParameter("fname");
	String rno = request.getParameter("rollno");
	String eo = request.getParameter("email");
	String mo = request.getParameter("mobile");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SVECW","root","");
		PreparedStatement ps = con.prepareStatement("insert into cse1 values('"+fno+"','"+rno+"','"+mo+"','"+eo+"')");
		int i = ps.executeUpdate();
		if(i > 0)
		{
			response.sendRedirect("login.html");
		}
		else
		{
			response.sendRedirect("register.html");
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
  %>
</body>
</html>
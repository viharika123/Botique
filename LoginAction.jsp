<%@page import="java.sql.ResultSet"%>
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
    String na = request.getParameter("Name1");
    String ro = request.getParameter("RollNo1");
    try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
		PreparedStatement ps = con.prepareStatement("select * from cse1 where Name='"+na+"'  and RollNo='"+ro+"'");
		ResultSet rs  = ps.executeQuery();
		if(rs.next())
		{
			session.setAttribute("key",na);
			response.sendRedirect("Userhome.jsp");
		}
		else
		{
		   %>
		      <h1> FAILED </h1>
		      <% 
		      response.sendRedirect("login.html");
		}
		
    }
    catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    

%>
</body>
</html>
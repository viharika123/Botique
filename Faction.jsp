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
   String w = request.getParameter("ds");
   String x = request.getParameter("ag");
   String y = request.getParameter("cl");
   String z = request.getParameter("sz");
   String q = request.getParameter("email");
   try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
		PreparedStatement ps = con.prepareStatement("insert into cse2 values('"+w+"','"+x+"','"+y+"','"+z+"','"+q+"')");
		int i = ps.executeUpdate();
		   if(i > 0)
		   {
			   session.setAttribute("key",w);
	         %>
	           <h1> ORDER SENT</h1><br><br>
	           <h1> Please check your email</h1><br><br>
	           <a href = "Front.html">Logout</a>
	         <% 		   
		   }   
		   else
		   {
			 %>
	           <h1> PLEASE TRY AGAIN</h1>
	           <a href = "Front.html">Logout</a>
	         <% 		
		   }
   }
   catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   %>
</body>
</html>
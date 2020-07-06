<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
          try
       {
        	  String s = session.getAttribute("key").toString();
        	  Class.forName("com.mysql.jdbc.Driver");
      		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
      		PreparedStatement ps = con.prepareStatement("select * from cse1 where Name='"+s+"'");
      		ResultSet rs  = ps.executeQuery();
      		if(rs.next())
      		{
      			%>
      			Name:<%=rs.getString("Name")%><br>
      			RollNO:<%=rs.getString("RollNo")%><br>
      			
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
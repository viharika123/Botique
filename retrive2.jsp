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
          try
           {
        	//String s = session.getAttribute("key").toString();
        	Class.forName("com.mysql.jdbc.Driver");
      		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/svecw","root","");
      		PreparedStatement ps = con.prepareStatement("select * from cse2");
        	PreparedStatement ps1 = con.prepareStatement("select * from cse1");
      		ResultSet rs  = ps.executeQuery();
      		ResultSet rs1  = ps1.executeQuery();
      		%>
      		<% 
      		
      		while(rs1.next())
      		{
      			
      			rs1.getString("Email");
      			
      		}
       }
       
       catch (Exception e) {
   		// TODO Auto-generated catch block
   		e.printStackTrace();
   	}
       %>
       <a href = "Adminp.html">Logout</a>
</body>
</html>
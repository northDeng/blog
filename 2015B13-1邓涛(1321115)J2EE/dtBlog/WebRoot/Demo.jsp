<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Demo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   
	
    <%
    Class.forName("com.mysql.jdbc.Driver");
    
    String user="root";
    String password="root";
   	String dbName="blog";

    String url="jdbc:mysql://localhost/"+dbName+"?"; 
    Connection conn=DriverManager.getConnection(url,user,password);
    Statement stmt=conn.createStatement();
	String sql="select count(id) rowCount from user"; 
	ResultSet rs=stmt.executeQuery(sql); 
	
	while(rs.next()) 
	 { 
		out.println(rs.getString("rowCount")+"  "+"<br>");
		
	 }
	
	out.println(rs.getRow());
    %>


   
  </body>
</html>

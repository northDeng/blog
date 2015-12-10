<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.util.mysql.*" %>
<%@ page import="com.admin.*"%>
<%@ page import="com.server.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insertAdmin.jsp' starting page</title>
    
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
  	String name=request.getParameter("name");
  	String password = request.getParameter("password");
  	adminServer ads = new adminServer();
  	int a = ads.insert(name, password);
  	if(a>0){
		out.println("成功");
		ads.close();
		%>
		 <a href="admin/adminServer.jsp?message=query">返回</a>
	<% 
	}
	else {
		out.println("失败");
	
	%>
	 <a href="admin/adminServer.jsp?message=insert">返回</a>
    <% }%>
   
  </body>
</html>

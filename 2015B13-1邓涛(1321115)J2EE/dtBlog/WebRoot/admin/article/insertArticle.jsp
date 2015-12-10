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
    
    <title>My JSP 'upDateAdmin.jsp' starting page</title>

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 
   <%
   String article=new String(request.getParameter("article").getBytes("iso-8859-1"),"utf-8");
   String name=request.getParameter("name");
   articleServer als = new articleServer();
  	int a = als.insert(name,article);
  	if(a>0){
		out.println("成功");
		als.close();
		%>
		 <a href="/dtBlog/admin/articleServer.jsp?judge=query">返回</a>
	<% 
	}
	else {
		out.println("失败");
	
	%>
	 <a href="/dtBlog/admin/articleServer.jsp?judge=insert">返回</a>
    <% }%>
  </body>
</html>

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
    
    <title>My JSP 'deleteAdmin.jsp' starting page</title>

  </head>
  
  <body>
    <%
    String name = request.getParameter("name");
    articleServer als = new articleServer();
	int a=als.delete(name);
	if(a>0){
		out.println("成功");
		als.close();
		%>
		 <a href="admin/articleServer.jsp?judge=query">返回</a>
		<% 
	}
	else {
		out.println("失败");
	
	%>
	 <a href="admin/articleServer.jsp?judge=delete">返回</a>
    <% }%>
   
  </body>
</html>

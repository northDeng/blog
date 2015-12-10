<%@page import="com.server.adminServer"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.util.mysql.*" %>
<%@ page import="com.server.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminServer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
  	String judge = request.getParameter("judge");
  
	
  if(judge.equals("query")){//查询
	 contentServer cts= new contentServer();
	 ResultSet res = cts.query();
 	 out.print("<table border=1px><tr><td>id</td><td>name</td><td>content</td></tr>");
  	while(res.next()){
  		out.print("<tr><td>"+res.getString("id")+"</td><td>"+
  		res.getString("name")+"</td><td>"+res.getString("content")+"</td></tr>");	
  	}
  		cts.close();
	  out.print("</table>");
  }else if(judge.equals("insert")){//插入
	%>
	<form action="/dtBlog/admin/content/insertContent.jsp" method="get" target="frame3">
	留言人名:<input type="text" name="name">
	留言内容 <textarea name="content" col="10" rows="3"></textarea>
	<input type="submit" value="确定">
	</form>
	<%   
  }else if(judge.equals("update")){//更新
	  %>
	<form action="/dtBlog/admin/content/upDateContent.jsp" method="get" target="frame3">
	留言人名:<input type="text" name="name">
	留言内容 <textarea name="content" col="10" rows="3"></textarea>
	<input type="submit" value="确定">
	</form>
	  
	  
	  <% 
  }else if(judge.equals("delete")){//删除
	 
	%>
	<form action="/dtBlog/admin/content/deleteContent.jsp" method="get" target="frame3">
	请输入需要删除留言的留言人的名字:<input type="text" name="name">
	<input type="submit" value="确定">
<%}%>
  <body>
    
  </body>
</html>

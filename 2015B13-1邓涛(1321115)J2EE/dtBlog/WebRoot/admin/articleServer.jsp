<%@page import="com.server.adminServer"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*" %>
<%@ page import="com.util.mysql.*" %>
<%@ page import="com.admin.*"%>
<%@ page import="com.server.*"%>

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
	  articleServer als = new articleServer();
	 ResultSet res = als.query();
 	 out.print("<table border=1px><tr><td>id</td><td>name</td><td>article</td></tr>");
  	while(res.next()){
  		out.print("<tr><td>"+res.getString("id")+"</td><td>"+
  		res.getString("name")+"</td><td>"+res.getString("article")+"</td></tr>");	
  	}
  		als.close();
	  out.print("</table>");
  }else if(judge.equals("insert")){//插入
	%>
	<form action="/dtBlog/admin/article/insertArticle.jsp" method="get" target="frame3">
	作者:<input type="text" name="name">
	文章:<textarea name="article" col="10" rows="3"></textarea>
	<input type="submit" value="确定">
	<%   
  }else if(judge.equals("update")){//更新
	  %>
	<form action="/dtBlog/admin/article/upDateArticle.jsp" method="get" target="frame3">
		作者:<input type="text" name="name">
		文章:<textarea name="article" col="10" rows="3"></textarea>
		<input type="submit" value="确定">
	</form>
	  
	  
	  <% 
  }else if(judge.equals("delete")){//删除
	  
	%>
	<form action="/dtBlog/admin/article/deleteArticle.jsp" method="get" target="frame3">
		请输入需要删除文章的作者的名字:<input type="text" name="name">
		<input type="submit" value="确定">
	</form>
<%}%>
  <body>
    
  </body>
</html>

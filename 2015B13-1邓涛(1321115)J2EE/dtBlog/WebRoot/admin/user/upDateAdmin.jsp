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
    adminServer ads = new adminServer();
   	String password ="";
    String level="";
   	ResultSet res = ads.query_name(name);//根据name对user表进行查询得到name在表中的一行信息
   	String t = request.getParameter("t");
   	//第一次进入
   	if(t == null){
	  	if(res.next()){
	  		level = res.getString("level");
			password = res.getString("password");
	  		out.println("<form action='/dtBlog/admin/user/upDateAdmin.jsp?t=t' method='post'><input type='text' name='name' value='"+
	  				name+"'/><br/><input type='password' name='password' value='"+password
	  				+"'/><br/><input type='text' name='level' value='"+level+"'/><br/><input type='submit' value='更新'></form>");
	  			
	  		
	  	}else{
	  		out.println("查无此人");
	  	}
   	} 	
   	//第二次进入
  	if( t != null){
  		name = request.getParameter("name");
  		password = request.getParameter("password");
  		level = request.getParameter("level");
  		int a = ads.upDate(name,password,level);
  		if(a>0){
		out.println("成功");
		%>
		 <a href="/dtBlog/admin/adminServer.jsp?message=query">返回</a>
	<% 
		}
		else {
			out.println("失败");
	
	%>
		 <a href="admin/adminServer.jsp?message=update">返回</a>
    <% }
  	}
  	ads.close();
  	%>
    
    
    
    
  </body>
</html>

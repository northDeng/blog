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
    
    <title>My JSP 'rLogin.jsp' starting page</title>
    
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
  	String psw= request.getParameter("password");
  	String name= request.getParameter("name");
  	name =new String(name.getBytes("iso-8859-1"),"utf-8");
  	adminServer ads = new adminServer();
 	String sql="select name,password,level from User where name='"+name+"'"; 
 	ResultSet rs=ads.query(sql);
 	String str=null;
 
 	while(rs.next()) 
 	 { 
 		
 		if(rs.getString("password").equals(psw)){
 			if(rs.getString("level").equals("1")){
  				session.setAttribute("admin",name);
 		  		out.print("欢迎回来"+session.getAttribute("admin")+"正在连接管理员页面.......");
 		  		response.setHeader("refresh","3;URL=admin/MyFrameset.jsp");
 		  		
 			}else{
 				session.setAttribute("admin",name);
 		  		out.print("欢迎回来"+session.getAttribute("admin"));
 		  		response.setHeader("refresh","3;URL=index.jsp");
 			}
 			ads.close();
 			return ;
 			
 		}
 		
 	 }  
 		ads.close();
  		out.print("请先注册");
  		response.setHeader("refresh","3;URL=Register.jsp");
  	%>
  	
  	
   	 <br/>
   	 
  </body>
</html>

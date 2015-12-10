<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
  	<ul>
    <li><a href="adminServer.jsp?message=insert" target="frame3">添加用户</a></li>
    <li><a href="adminServer.jsp?message=delete" target="frame3">删除用户</a></li>
    <li><a href="adminServer.jsp?message=update" target="frame3">更新用户</a></li>
    <li><a href="adminServer.jsp?message=query" target="frame3">查询用户</a></li>
  </ul>
  </body>
</html>

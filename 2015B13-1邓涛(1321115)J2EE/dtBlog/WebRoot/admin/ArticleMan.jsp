<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <body>
  <ul>
    <li><a href="articleServer.jsp?judge=insert" target="frame3">添加文章</a></li>
    <li><a href="articleServer.jsp?judge=delete" target="frame3" >删除文章</a></li>
    <li><a href="articleServer.jsp?judge=update" target="frame3" >修改文章</a></li>
    <li><a href="articleServer.jsp?judge=query" target="frame3" >查询文章</a></li>
  </ul>
  </body>
</html>

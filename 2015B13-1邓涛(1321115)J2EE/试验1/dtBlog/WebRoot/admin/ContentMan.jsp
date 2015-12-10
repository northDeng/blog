<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <body>
   <ul>
    <li><a href="1.jsp" target="frame3">添加留言</a></li>
    <li><a href="1.jsp" target="frame3">删除留言</a></li>
    <li><a href="1.jsp" target="frame3">管理留言</a></li>
    <li><a href="1.jsp" target="frame3">查询留言</a></li>
  </ul>
  </body>
</html>

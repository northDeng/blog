<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <body>
  <center>
    <h1 >管理员页面</h1> <br/>
    <a href="../index.jsp" target="_top">网站首页</a>
    <a href="UserMan.jsp" target="frame2">管理用户</a>
    <a href="ArticleMan.jsp" target="frame2">管理文章</a>
    <a href="ContentMan.jsp" target="frame2">管理留言</a>
  </center>
  </body>
</html>

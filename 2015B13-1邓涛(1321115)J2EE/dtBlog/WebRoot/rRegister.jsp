<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.util.mysql.*" %>
<%@ page import="com.admin.*"%>
<%@ page import="com.server.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
   <%
  		admin user = new admin();
   		user.setStuName(request.getParameter("StuName"));
   		user.setPassword(request.getParameter("password"));
   		user.setStuNum(request.getParameter("StuNum"));
   		user.setZhuanye(new String(request.getParameter("zhuanye").getBytes("iso-8859-1"),"utf-8"));
   		user.setBanji(request.getParameter("banji"));
   		user.setSex(new String(request.getParameter("sex").getBytes("iso-8859-1"),"utf-8"));
   		user.setEmail(request.getParameter("email"));
   		user.setPhone(request.getParameter("phone"));
   		user.setQq(request.getParameter("qq"));
   		user.setZyxxcj(new String(request.getParameter("zyxxcj").getBytes("iso-8859-1"),"utf-8"));
   		user.setHjqk(new String(request.getParameter("hjqk").getBytes("iso-8859-1"),"utf-8"));
   		user.setShsj(new String(request.getParameter("shsj").getBytes("iso-8859-1"),"utf-8"));
   		
   		adminServer ads = new adminServer();
   		int a = ads.admin_register(user);
   		if(a>0){
   			String name=user.getStuNum();
   			String password= user.getPassword();
   			if(ads.insert(name,password)>0){
   				out.println("注册成功");
   				response.setHeader("refresh","3;URL=rLogin.jsp?name="+name+"&password="+password);
   				}
   			}else{
   				out.println("注册失败,请重新填写");
   				response.setHeader("refresh","3;URL=Register.jsp");
   		}
   		ads.close();
   
    %>
  </body>
</html>

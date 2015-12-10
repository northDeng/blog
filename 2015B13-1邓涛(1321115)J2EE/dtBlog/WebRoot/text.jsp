<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.util.mysql.*" %>
<%@ page import="com.server.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.util.fenyepage.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>      
    <title>My JSP 'text.jsp' starting page</title>
  </head>
 
  <body>
    <% 
    adminServer ads = new adminServer();
    page p = new page();
    //设置当前页行数
   // p.setPageSize(2);
    //设置pagenow
    String pageNow = request.getParameter("pageNow");
    if(pageNow != null){
    	p.setPageNow(Integer.parseInt(pageNow));
    }
    ads.dealPageInfo(p);
	ResultSet rs = p.getRes();
  	while(rs.next()) 
	 { 
		out.println(rs.getString("name")+" "+rs.getString("password")+"<br/>");
	 }
  	ads.close();
    %>
    <a href="text.jsp?pageNow=<%=p.upPage()%>">pageup</a>
    <a href="text.jsp?pageNow=<%=p.downPage()%>">pagedown</a>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Register.jsp' starting page</title>
    
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
  <center>
   <form action ="rRegister.jsp" method="post" name="myform" >
   <table>
  <tr><td>学号:</td><td><input type="text" name="StuNum"/></td></tr>
   <tr><td>密码:</td><td><input type="password" name="password"/></td></tr>
   <tr><td>再次输入:</td><td><input type="password" name="nextpassword"/></td></tr>
   <tr><td>姓名:</td><td><input type="text" name="StuName"/></td></tr>
   <tr><td>专业</td><td><select name="zhuanye">
   <option value="scyx">市场营销</option>
   <option value="jsjkx">计算机</option>
   <option value="wlgc">网络</option>
   </select></td></tr>
<tr><td> 班级:</td><td><input type="text" name="banji"/></td></tr>
 <tr><td>性别:</td><td><input type="radio" name="sex" value="man"/>man
   <input type="radio" name="sex" value="woman"/>women</td></tr>
<tr><td>email:</td><td><input type="text" name="email"/></td></tr>
<%
String str = request.getParameter("email");
String str1='^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$';
if(str != ""){
	
}
%>

<tr><td> 联系电话:</td><td><input type="text" name="phone"/></td></tr>
<tr><td>qq:</td><td><input type="text" name="qq"/></td></tr>
 <tr><td>专业学习成绩:</td><td><textarea name="text1" id="t1" rows=3 cols=30 ></textarea></td></tr>
<tr><td>获奖情况:</td><td><textarea name="text2" id="t2" rows=3 cols=30 ></textarea></td></tr>
<tr><td>社会实践情况:</td><td><textarea name="text3" id="t3" rows=3 cols=30 ></textarea></td></tr>
   
   <tr><td><input type="submit" value="submit"/></td><td>
   <input type="reset" value="reset"/>  </td></tr>
   </table>
   </form>
  </center>
  </body>
</html>

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
<script type="text/javascript">
	function judge(){
	var str=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	var num=/^\d{10}$/;
	var checkpsw=/^[A-Za-z0-9]+$/;
	var checkbj=/^[0-9]*$/;
	var checktel =/^\d{11}$/;
	
	if(!num.test(document.myform.StuNum.value)){
		alert("学号格式不正确");
		document.myform.StuNum.focus();
		return false;
		
	}else
	if(!document.myform.StuName.value){
		alert("姓名不能为空");
		document.myform.StuName.focus();
		return false;
	}else
	if(!checkpsw.test(document.myform.password.value)){
		alert("密码格式不正确");
		document.myform.password.focus();
		return false;
		
	}else
	if(document.myform.password.value != document.myform.nextpassword.value){
		alert("两次密码不一致");
		document.myform.password.focus();
		return false;
	}else
	if( !str.test(document.myform.email.value)){
		alert("邮箱输入不正确");
		document.myform.email.focus();
		return false;
	}else
	if(!checktel.test(document.myform.phone.value)){
		alert("电话格式不正确");
		document.myform.phone.focus();
		return false;
		
	}else
	if(!checkbj.test(document.myform.banji.value )){
		alert("班级格式不正确");
		document.myform.banji.focus();
		return false;
	}
	
	
	
}

</script>
  </head>
  <center>
  	<h1>注册页面</h1>
  </center>
  <body> 
  <center>
   <form action ="servlet/regServlet"" method="post" name="myform" onsubmit="return judge()">
   <table>
  <tr><td>学号:</td><td><input type="text" name="StuNum"/></td><td>格式:0505070101*请输入你的学号</td></tr>
   <tr><td>密码:</td><td><input type="password" name="password"/></td><td>*密码不符合安全规则，由字母和数字组成</td></tr>
   <tr><td>再次输入:</td><td><input type="password" name="nextpassword"/></td><td></td></tr>
   <tr><td>姓名:</td><td><input type="text" name="StuName"/></td><td>*请输入你的真实姓名</td></tr>
   <tr><td>专业</td><td><select name="zhuanye">
   <option value="市场营销">市场营销</option>
   <option value="计算机">计算机</option>
   <option value="网络">网络</option>
   </select></td><td></td></tr>
<tr><td> 班级:</td><td><input type="text" name="banji"/></td><td>*班级只允许数字</td></tr>
 <tr><td>性别:</td><td><input type="radio" name="sex" value="男"/>男
   <input type="radio" name="sex" value="女"/>女</td><td></td></tr>
<tr><td>email:</td><td><input type="text" name="email"/></td><td>*信箱格式xx@xx.XX</td></tr>


<tr><td> 联系电话:</td><td><input type="text" name="phone"/></td><td>*请留下联系电话11位数字</td></tr>
<tr><td>qq:</td><td><input type="text" name="qq"/></td><td>*请填写正确的qq号</td></tr>
 <tr><td>专业学习成绩:</td><td><textarea name="zyxxcj" id="t1" rows=3 cols=30 ></textarea></td><td>*请输入你的专业学习成绩</td></tr>
<tr><td>获奖情况:</td><td><textarea name="hjqk" id="t2" rows=3 cols=30 ></textarea></td><td>*请输入你的获奖情况</td></tr>
<tr><td>社会实践情况:</td><td><textarea name="shsj" id="t3" rows=3 cols=30 ></textarea></td><td>*请输入你的社会实践情况</td></tr>
   
   <tr><td><input type="submit" value="submit"/></td><td>
   <input type="reset" value="reset"/>  </td></tr>
   </table>
   </form>
  </center>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- font files  -->


	<!-- css files -->
	<link href="css/login.css" rel='stylesheet' type='text/css' media="all" />
	<!-- /css files -->
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/tbdValidate.js"></script>
	<script type="text/javascript">
	$(function(){
		//demo1
		var regconfig=[
				{eleinput:"login_phone",eletext:"login_phone_text",rule:[{reg:/^.+$/,text:"手机号不能为空"},{reg:/^1[34578]\d{9}$/,text:"手机号格式错误"}]},
				{eleinput:"login_password",eletext:"login_password_text",rule:[{reg:/^.+$/,text:"密码不能为空"}]}
			];
		tbdValidate(
			regconfig,
			{
				elesubmit:"login_submit",//提交按钮
				funsubmit:function(){//验证通过可提交回调				
					//信息提交接口
					alert("成功");				
				},
				funerr:function(){//不可提交回调
					
				},
				funerrlist:function(errlist){
					$('#'+ errlist[0]).focus();
				}	
			}
		);	
}  


</script>
    
  </head>
  
  <body>
    <img src="imgs/logobai.png" class="logo1"alt=""/>
<h1>
	<apan>M</apan>Y <apan>D</apan>ANCE</h1>
<div class="log">
	<div class="content1">
		<h2>学号登录</h2>
		<div>
		<form class="form" id="loginForm">
			<div class="login_nameda">
			<input type="text"  name="loginname" value="USERNAME" id="login_phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}">
					<label  class="name_tishi" id="login_phone_text">手机号错误</label>	
			</div>
			<div class="login_passda">
			<input type="password" name="psw" value="PASSWORD"  id="login_password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PASSWORD';}">
					<label  class="name_tishi" id="login_password_text">请输入密码</label>
			</div>
			<div class="button-row">
				<input type="submit" class="sign-in" value="登录" id="login_submit">
				
				<div class="clear"></div>
			</div>
		</form>
  	</div>
	
	<div class="clear"></div>
	</div>
	<div class="footer">
	
	</div>
  </body>
</html>
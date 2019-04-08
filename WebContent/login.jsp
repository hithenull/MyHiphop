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

	<link href="css/login.css" rel='stylesheet' type='text/css'/>
	<!-- /css files -->
	<style type="text/css">
		.logo1{
			margin:10px -200px;
		}
		.content1{
			margin:10px 200px;
		}
		.login_nameda{
			width:340px;height:70px;
		}
		.login_passda{
			width:340px;height:70px;
		}
		.button-row{
			width:440px;height:70px;
		}
	</style>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
		$(function(){

		   $('#login_phone').on('input propertychange',function(){
			   var username = $('#login_phone').val();
			   if(username.length<5){
				   $('#span_use').text("输入错误");
			   }else{
				   $('#span_use').text("");
			   }
		   });

		 });

	</script>
    
</head>
  
<body>

    <img src="imgs/logobai.png" class="logo1"alt=""/>
    
	<h1><apan>M</apan>Y <apan>D</apan>ANCE</h1>
	<div class="log">
		<div class="content1">
			<h2>登录</h2>
			<div class="content2">
				<form class="form" id="loginForm" method="post" action="public_login">
					<div class="login_nameda">
						<input type="text"  name="loginname" id="login_phone"><br />
						<span id="span_use"></span>
					</div>
					<div class="login_passda">
						<input type="password" name="loginpassword" id="login_password" >
						<span id="span_pas"></span>
					</div>
					<div class="button-row">
						<input type="submit" class="sign-in" value="登录" id="login_submit">
						<div class="clear"></div>
					</div>
				</form>
	  		</div>
		
			<div class="clear">
			</div>
		</div>
		<div class="footer">
		</div>
	</div>
</body>
</html>
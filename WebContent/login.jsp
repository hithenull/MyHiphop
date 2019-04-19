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

	function checkusrn() {
		var check = false;
		var username = document.getElementById("login_phone").value;
	    var firstChar=username.substr(0,1);
		  if(!/^[a-zA-Z]*$/.test(firstChar)){
			 document.getElementById("span_use").innerHTML = " 第一个要为字母";
			 check = false;
	    } else if (username.length < 5) {
			document.getElementById("span_use").innerHTML = " 用户名不要少于5位";
			check = false;
		}else if (username.length > 7){
			document.getElementById("span_use").innerHTML = " 用户名不要多于7位";
		    check = false;
		}else {
			document.getElementById("span_use").innerHTML = "  √";
			check = true;
		}
		return check;
	}
	 
	function checkpwd() {
		var check = false;
		var password = document.getElementById("login_password").value;
		if (password.length < 6) {
			document.getElementById("span_pas").innerHTML = "密码不能少于6位";
			check = false;
		} else {
			document.getElementById("span_pas").innerHTML = "  √";
			check = true;
		}
		return check;
	}

	function check() {
		var check = checkusrn() && checkpwd();
		if(check==true){
			return true;
		}else{
			document.getElementById("login_phone").value="";
			document.getElementById("login_password").value="";
			document.getElementById("span_use").innerHTML="";
			document.getElementById("span_pas").innerHTML="";
			return false;
		}
	}

	</script>
    
</head>
  
<body>

    <img src="imgs/logobai.png" class="logo1"alt=""/>
    
	<h1><apan>M</apan>Y <apan>D</apan>ANCE</h1>
	<div class="log">
		<div class="content1">
			<h2>登录</h2>
			<div class="content2">
				<form class="form" id="loginForm" method="post" action="public_login" onsubmit="return check()">
					<div class="login_nameda">
						<font style="color:white">用户名：</font><input type="text"  name="loginname" id="login_phone" oninput="checkusrn()"><br />
						<span id="span_use"></span>
					</div>
					<div class="login_passda">
						<font style="color:white">密&nbsp;&nbsp;&nbsp;码：</font><input type="password" name="loginpassword" id="login_password" oninput="checkpwd()"><br/>
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
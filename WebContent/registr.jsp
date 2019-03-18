<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>蚂蚁街舞官网</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
		
		<style type="text/css">
			body{
			font-family: 'Nunito', sans-serif;
			color:white;
			font-size:20px;
			background-color:#c1bdba;
			background:url(imgs/registr.jpg) no-repeat;
			background-size:100%;
		}
		.logo{
			width:100px;
			height:100px;
		}
		.big{
			background-color:rgba(0,0,0,0.21);
			opacity:0.8;
			position:absolute;
			top:150px;
			left:390px;
			max-width:1000px;
			width:700px;
			height:550px;
			
			border-radius: 25px;
		}
		.form{
			position:absolute;
			top:150px;
			left:460px;
			width:500px;
			height:40px;
			text-align:center;
			
		
		}
		input[type="text"]{
			padding:10px 40px 10px 10px;
			width:70%;
			border:1px solid #fff;
			color:#fff;
			text-align:left;
			outline:none;
			font-size:18px;
			background:url(imgs/person.png) no-repeat 440px 10px;
			margin-top:4%;
			font-weight: 300px;
			font-family: "Times New Roman";
			border-radius: 4px;
		}
		.mydance{
			font-size:50px;
			font-weight:300px;
			position:absolute;
			left:670px;
			top:60px;
		}
		.logobai{
			width:130px;
			height:130px;
			position:absolute;
			left:540px;
			top:25px;
			
		}
		.enrollfor{
			font-size:50px;
			margin-left:10%;
		}
		input[type="radio"]{
			
			margin-top:4%;
			font-family: "Times New Roman";
		}
		
		.btn{
			font-size:30px;
			
			border:0px;
			background-color:#4c9a39;
			position:absolute;
			top:490px;
			left:175px;
			width:45%;
			height:50px;
			border-radius: 4px;
			cursor:pointer;
		}
		.btn:hover{
			background-color:#376d29;
			color:#fff;
		}
		
		
		.person{
			position:absolute;
			top:160px;
			left:430px;
		}
		.phone{
			position:absolute;
			top:340px;
			left:430px;
		}
		.lock{
			position:absolute;
			top:422px;
			left:430px;
		}
		input::-webkit-input-placeholder{ 
		/* WebKit browsers */
			color:white;opacity:0.7;
		}
		.yzm{
			font-size:20px;
			border-radius: 10px;
			border:0px;
			background-color:#4c9a39;
			width:25%;
			height:45px;
			cursor:pointer;
			position:absolute;
			top:323px;
			left:500px;
		}
		.yzm:hover{
			background-color:#376d29;
			color:#fff;
		}
		#tellyz{
			display:none;
			color:red;
		}
		span{
			color:black;
		}
		select{
			padding:10px 40px 10px 10px;
			width:70%;
			border:1px solid #fff;
			background:rgba(0,0,0,0);
			text-align:left;
			outline:none;
			font-size:18;
			margin-top:4%;
			font-weight: 300px;
			font-family: "Times New Roman";
			border-radius: 4px;
			color:white;
			
		}
		</style>
	</head>
	<body>
	<img class="logobai" src="imgs/logobai.png"  /><font class="mydance" size="20"> <span>M</span>Y <span>D</span>ANCE</font>
	<div class="big">
		
	</div>
	<div class="form">
		<font class="enrollfor">Enroll For</font><br/><br/>
		<form>
			<img class="person" src="imgs/person.png" />
			<img class="phone" src="imgs/phone.png" />
			<img class="lock" src="imgs/lock.png" />
			<input type="radio" name="sex" value="男" checked="checked"/>男
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
				  <input type="radio" name="sex" value="女" />女<br/>
				  
				  
			姓 &nbsp;&nbsp;名：<input type="text" name="studentName" id="name" placeholder="name*" /><br/><br/>
			职 &nbsp;&nbsp;业：<select>
				<option value="学生">学生</option>
				<option value="指导员">指导员
				</option>
			</select><br/><br/>
			<form>
			电 &nbsp;&nbsp;话：<input type="text" id="phone" name="phone" placeholder="phone number*" pattern="[0-9]{11}"  onchange='check()'/>
			
			<button class="yzm" type="submit">获取验证码</button>
			</form>	
			验证码：<input type="text" name="verification code" placeholder="verification code" /><br/>
				<button class="btn" type="submit">submit</button>
				
		</form>
		</div>
	</body>
</html>
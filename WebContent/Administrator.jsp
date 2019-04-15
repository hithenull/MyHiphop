<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>蚂蚁街舞工作室</title>
<style type="text/css">
	body{
		font-family: "微软雅黑";
		background-color: black;
		color:white;
	}
	.big{
		margin:0 auto;
		border:1px solid #ccc;
		height:1000px;
		width:1200px;
	}
	a{
		color:white;
		text-decoration: none;
	}
	.mc{
	
		position: absolute;
		top:30px;
	}
	.hy{
		position: absolute;
		left:530px;
		top:70px;
	}
	button{
		cursor: pointer;
		border:0px;
		background-color: ;
	}
	#time1{
		position: absolute;
		left:1140px;
		top:70px;
	}
	table{
		border-collapse:collapse;
		margin: 10px 15px;

	}
	table td{
		border:1px solid white;
		width:285px;
		height:75px;
	}
	table font{
		font-size:20px;
	}
	.td1{
		cursor: pointer;
		margin: 0px 30px;
		font-weight: 900;
	}
	.td2{
		cursor: pointer;
		margin: 0px 30px;
		font-weight: 900;
	}
	.td3{
		cursor: pointer;
		margin:0px 50px;
		font-weight: 500;
	}
	.td4{
		margin: 0px 50px;
		font-weight:500;
	}
	iframe{
		float: right;
		width:850px;
		height:500px;
		margin: 114px 0px;
		border:1px solid white;
	}
</style>
</head>
<script type="text/javascript">

//动态显示
setInterval("document.getElementById('time1').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
</script>
<body>
	<div class="big">
		<img src="imgs/logobai.png" width="100" height="100"><font class="mc" size="5">蚂蚁街舞后台管理系统</font>
		<span class="hy">欢迎管理员： hehe <a href="login.jsp"><button>[安全退出]</button></a></span>
		<span id="time1"></span>
		<iframe name="iframe"></iframe>
		
	<table>
		<tr><td><a href="" target="iframe"><font class="td1">主页</font></a></td></tr>
		<tr><td><a href="" target="iframe"><font class="td2">新闻管理</font></a></td></tr>
		<tr><td><a href="add.jsp" target="iframe"><font class="td3">添加新闻</font></a></td></tr>
		<tr><td><a href="list.jsp" target="iframe"><font class="td4">新闻列表</font></a></td></tr>
		<tr><td><a href="" target="iframe"><font class="td2">班级管理</font></a></td></tr>
		<tr><td><a href="addClass.jsp" target="iframe"><font class="td3">添加班级</font></a></td></tr>
		<tr><td><a href="classList.jsp" target="iframe"><font class="td4">班级列表</font></a></td></tr>
		<tr><td><a href="" target="iframe"><font class="td2">人员管理</font></a></td></tr>
		<tr><td><a href="studentList.jsp" target="iframe"><font class="td3">学生列表</font></a></td></tr>
		<tr><td><a href="findTeacher.jsp" target="iframe"><font class="td4">老师列表</font></a></td></tr>	
	</table>
	
	</div>
	
</body>
</html>
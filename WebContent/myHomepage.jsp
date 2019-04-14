<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>蚂蚁街舞官网</title>

<style>
* {
	padding: 0px;
	margin: 0px;
}

body {
	background-color: black;
	color: black;
}

.big {
	margin: 0 auto;
	position: relative;
	width: 1505px;
	height: 2240px;
}

.top {
	height: 800px;
	width: 1505px;
	background: url(imgs/information.jpg);
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	text-align: center;
	line-height: 600px;
	background-repeat: no-repeat;
}

.middle {
	background-color: white;
	text-align: center;
	font-size: 35px;
	height: 1200px;
	width: 1505px;
}

.picture {
	width: 160px;
	height: 160px;
	border-radius: 80px;
	position: absolute;
	top: 1000px;
	left: 670px;
}

.hr1 {
	width: 500px;
	float: left;
	height: 0px;
}

.hr2 {
	width: 500px;
	float: right;
}

.picture img {
	width: 100%;
	height: 100%;
	border-radius: 80px;
}

a {
	color: black;
	text-decoration: none;
}

a:hover {
	font-weight: bold;
	text-decoration: underline;
}

.levitate {
	background-color: white;
	height: 100px;
}

.levitate:hover {
	box-shadow: #ccc 0px 0px 30px 5px;
}

h1 {
	color: black;
	font-size: 60px;
}

.top hr {
	border: 0px;
	height: 2px;
	width: 100px;
	background-color: black;
	margin: -220px 705px;
}

.top button {
	background: none;
	border: 1px solid black;
	width: 106px;
	height: 53px;
	font-size: 16px;
	cursor: pointer;
	position: absolute;
	top: 550px;
	left: 700px;
}

.top button:hover {
	background-color: black;
	color: white;
}

ul {
	list-style: none;
	margin: 0px;
	padding: 0px 435px;
	width: auto;
}

ul li {
	float: left;
	padding: 40px 85px;
	font-size: 20px;
}

.middle hr {
	border: 0px;
	height: 1px;
	width: 100px;
	background-color: black;
	position: absolute;
	top:1000px;
	left:700px;
}

.gyw {
	position: absolute;
	top: 920px;
	left: 700px;
}

.middle button {
	background: none;
	border: 1px solid black;
	width: 106px;
	height: 53px;
	font-size: 16px;
	cursor: pointer;
	position: absolute;
	top:1700px;
	left:690px;
}

.middle button:hover {
	background-color: black;
	color: white;
}

.bottom {
	position: absolute;
	top: 1950px;
	width: 1505px;
	height: 240px;
	text-align: center;
}

.logowei {
	width: 250px;
	height: 250px;
	position: absolute;
	top: -20px;
	left: 50px;
}

.ending {
	position: absolute;
	top: 150px;
	left: 440px;
	color: white;
	font-size: 15;
}
hr{
	margin:-20px 0px;
}
.big_div{
	border:1px solid red;
}
.div_all{
	width:930px;height:500px;
	margin:280px 300px;
	border:1px solid red;
}
.div_all div{
	width:290px;height:240px;
	border:1px solid red;
	margin:5px 5px;
	float:left;	
	border-radius: 45px;
	
}
.div_all div: hover{
	box-shadow: 0 10px 10px 0 rgba(0,0,0,0.10),0 10px 10px 0 rgba(0,0,0,0.10);
}
</style>
</head>
<body oncontextmenu='return false' ondragstart='return false'
	onselectstart='return false' onselect='document.selection.empty()'
	oncopy='document.selection.empty()' onbeforecopy='return false'
	onmouseup='document.selection.empty()'>
	<div class="big">
		<div class="top" id="container">
			<h1>个人中心</h1>
			<hr />
			<font size="5"><a href="">资料</a>·<a href="home.jsp">官网</a>·<a href="update.jsp">修改资料</a></font>
			<br /> <a id="skip"><button>关于自己</button></a>
		</div>
		<div class="middle" id="box">
			<ul class="levitate" id="fixPara">
				<li><a href="xinwen.jsp">关于</a></li>
				<li><a href="">资料</a></li>
				<li><a href="update.jsp">修改</a></li>
			</ul>
			<span class="gyw">关于我</span>
			<hr />
			<div class="picture" id="demo">
				<c:if test="${sessionScope.student == null}"><img src="${sessionScope.teacher.timg_src}" onmouseover="xuanzhuan()" /></c:if>
				<c:if test="${sessionScope.teacher == null}"><img src="${sessionScope.student.simg_src}" onmouseover="xuanzhuan()" /></c:if>
			</div>
			<div class="big_div">
				<div class="div_all">
					<a><div class="div_1">个人资料</div></a>
					<a href="public_getaddress"><div class="div_2">修改资料</div></a>
					<a><div class="div_3">个人课表</div></a>
					<a><div class="div_4">班级信息</div></a>
					<a><div class="div_5">班级学员</div></a>
					<a href="xinwen.jsp"><div class="div_6">学校详情</div></a>
					<a href="home.jsp"><div class="div_7">退出系统</div></a>
					<a><div class="div_8">退出系统</div></a>
					<input type="hidden" value="${sessionScope.student}" id="student"/>
					<input type="hidden" value="${sessionScope.teacher}" id="teacher"/>
				</div>
			</div>
			<a href="home.jsp" class="guan"><button>官网入口</button></a>
		</div>
		<div class="bottom">
			<img class="logowei" src="imgs/logowei.png" />
			<div class="ending">
				江西省抚州市临川区 Ant-street-dance-studio 营业执照号码：92361002L75863591Q</br>
				联合创始人：张重民&nbsp;&nbsp;&nbsp; 传真：15070426430</br> 电子邮箱：1003672961@qq.com<br /></br>
				</br> <font size="1">&copy;2019.ANTMYDANCE Inc保留所有权利。</font>
			</div>
		</div>
	</div>
	<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			
			var a = $("#student").val();
			var b = $("#teacher").val();
			if(a!=null){
				$(".div_5").hide();
				$(".div_7").hide();
				$(".div_4").show();
				$(".div_6").show();
			}
			if(b!=null){
				$(".div_4").hide();
				$(".div_6").hide();
				$(".div_5").show();
				$(".div_7").show();
				
			}
		});
		
	</script>
</body>
</html>
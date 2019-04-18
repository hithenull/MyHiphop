<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
body {
	font-family: 'Nunito', sans-serif;
	color: white;
	font-size: 20px;
	background-color: #c1bdba;
	background: url(imgs/registr.jpg) no-repeat;
	background-size: 100%;
}

.logo {
	width: 100px;
	height: 100px;
}

.big {
	background-color: rgba(0, 0, 0, 0.21);
	opacity: 0.8;
	position: absolute;
	top: 150px;
	left: 390px;
	max-width: 1000px;
	width: 700px;
	height: 550px;
	border-radius: 25px;
}

.form {
	position: absolute;
	top: 150px;
	left: 460px;
	width: 500px;
	height: 40px;
	text-align: center;
}

input[type="text"] {
	padding: 10px 40px 10px 10px;
	width: 70%;
	border: 1px solid #fff;
	color: #fff;
	text-align: left;
	outline: none;
	font-size: 18px;
	background: url(imgs/person.png) no-repeat 440px 10px;
	margin-top: 4%;
	font-weight: 300px;
	font-family: "Times New Roman";
	border-radius: 4px;
}

.mydance {
	font-size: 50px;
	font-weight: 300px;
	position: absolute;
	left: 670px;
	top: 60px;
}

.logobai {
	width: 130px;
	height: 130px;
	position: absolute;
	left: 540px;
	top: 25px;
}

.enrollfor {
	font-size: 50px;
	margin-left: 10%;
}

input[type="radio"] {
	margin-top: 4%;
	font-family: "Times New Roman";
}

.btn {
	font-size: 30px;
	border: 0px;
	background-color: #4c9a39;
	position: absolute;
	top: 425px;
	left: 160px;
	width: 45%;
	height: 50px;
	border-radius: 4px;
	cursor: pointer;
}

.btn:hover {
	background-color: #376d29;
	color: #fff;
}

.person {
	position: absolute;
	top: 160px;
	left: 430px;
}

.phone {
	position: absolute;
	top: 285px;
	left: 430px;
}

.lock {
	position: absolute;
	top: 350px;
	left: 430px;
}

input::-webkit-input-placeholder {
	/* WebKit browsers */
	color: white;
	opacity: 0.7;
}

.yzm {
	font-size: 20px;
	border-radius: 10px;
	border: 0px;
	background-color: #4c9a39;
	width: 25%;
	height: 45px;
	cursor: pointer;
	position: absolute;
	top: 338px;
	left: 500px;
}

.yzm:hover {
	background-color: #376d29;
	color: #fff;
}

#tellyz {
	display: none;
	color: red;
}

span {
	color: black;
}

select {
	padding: 10px 40px 10px 10px;
	width: 35%;
	border: 1px solid #fff;
	background: rgba(0, 0, 0, 0);
	text-align: left;
	outline: none;
	font-size: 18;
	margin-top: 4%;
	font-weight: 300px;
	font-family: "Times New Roman";
	border-radius: 4px;
	color: #ccc;
}
.span{
	width:80%;
	position: absolute;
	top:325px;
	left:55px;
}
#upload{
	position: absolute;
	top:350px;
	left:315px;
	
	opacity: 0;

	cursor: pointer;
}
.tx{
	position:absolute;
	top:350px;
	left:35px;
}
.file1{
	position: absolute;
	top:350px;
	left:405px;
}
a {
	text-decoration: none;
}
</style>
<script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>	
<script>
		var subcat = new Array();
		var biglist = new Array('学生', '指导员');
		subcat[0] = new Array('0', '少儿HIPHOP启蒙班');
		subcat[1] = new Array('0', '少儿HIPHOP初级班');
		subcat[2] = new Array('0', '少儿HIPHOP中级班');
		subcat[3] = new Array('0', '少儿HIPHOP高级班');
		subcat[4] = new Array('0', '少儿JAZZ启蒙班');
		subcat[5] = new Array('0', '少儿JAZZ初级班');
		subcat[6] = new Array('0', '少儿JAZZ中级班');
		subcat[7] = new Array('0', '少儿JAZZ高级班');
		subcat[8] = new Array('0', '成年HIPHOP初级班');
		subcat[9] = new Array('0', '成年HIPHOP中级班');
		subcat[10] = new Array('0', '成年HIPHOP高级班');
		subcat[11] = new Array('0', '成年JAZZ初级班');
		subcat[12] = new Array('0', '成年JAZZ中级班');
		subcat[13] = new Array('0', '成年JAZZ高级班');
		subcat[14] = new Array('1', '少儿HIPHOP启蒙班');
		subcat[15] = new Array('1', '少儿HIPHOP初级班');
		subcat[16] = new Array('1', '少儿HIPHOP中级班');
		subcat[17] = new Array('1', '少儿HIPHOP高级班');
		subcat[18] = new Array('1', '少儿JAZZ启蒙班');
		subcat[19] = new Array('1', '少儿JAZZ初级班');
		subcat[20] = new Array('1', '少儿JAZZ中级班');
		subcat[21] = new Array('1', '少儿JAZZ高级班');
		subcat[22] = new Array('1', '成年HIPHOP初级班');
		subcat[23] = new Array('1', '成年HIPHOP中级班');
		subcat[24] = new Array('1', '成年HIPHOP高级班');
		subcat[25] = new Array('1', '成年JAZZ初级班');
		subcat[26] = new Array('1', '成年JAZZ中级班');
		subcat[27] = new Array('1', '成年JAZZ高级班');
	
		function changeselect1(locationid) {
			for (j = 0; j < biglist.length; j++)
				if (biglist[j] == locationid) {
					locationid = j;
				}
			document.submit_form.jobapplication.length = 0;//初始化下拉列表，清空下拉数据 
			document.submit_form.jobapplication.options[0] = new Option('舞种', '舞种');//给第一个值 
			for (i = 0; i < subcat.length; i++) {
				if (subcat[i][0] == locationid) {
					document.submit_form.jobapplication.options[document.submit_form.jobapplication.length] = new Option(
							subcat[i][1], subcat[i][2]);
				}//建立option 
			}
		}
</script>
</head>
<body oncontextmenu='return false' ondragstart='return false' onselectstart='return false' onselect='document.selection.empty()'
	oncopy='document.selection.empty()' onbeforecopy='return false' onmouseup='document.selection.empty()'>
	
	<img class="logobai" src="imgs/logobai.png" />
	<font class="mydance" size="20"> <span>M</span>Y <span>D</span>ANCE
	</font>
	<div class="big"></div>
	<div class="form">
		<font class="enrollfor">Enroll For</font><br /> <br />
		<form id="submit_form" name="submit_form" method="post" action="public_register" >

			<img class="person" src="imgs/person.png" /> 
			<img class="phone" src="imgs/phone.png" /> 
			
			<input type="radio" name="user.usersex" value="男" checked="checked" />男
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="radio" name="user.usersex" value="女" />女
			
			<br /> 姓 &nbsp;&nbsp;名：<input type="text"
				name="user.username" id="name" placeholder="name*" /><br /> 职
			&nbsp;&nbsp;业：<select onChange="changeselect1(this.value)"
				name="user.jobapplication">
				<option value="职业" selected>职业</option>
				<option value="学生">学生</option>
				<option value="指导员">指导员</option>
			</select>
			 <select name="jobapplication">
				<option value="舞种" selected>舞种</option>
			</select> <br /> 电 &nbsp;&nbsp;话：<input type="text" id="phone"
				name="user.userphone" placeholder="phone number*"
				pattern="[0-9]{11}" onchange='check()' />
				<font class="tx">头 &nbsp;&nbsp;像：</font>
				<span class="span"> 
				
				<input name="user.imagesrc" type="text" id="viewfile" placeholder="head portrait" onmouseout="document.getElementById('upload').style.display='none';"
				 			class="inputstyle" /> 
				</span> 
				<label for="unload" onmouseover="document.getElementById('upload').style.display='block';" class="file1">浏览...</label> 
				
				<input type="file" onchange="document.getElementById('viewfile').value=this.value;this.style.display='none';"
				 			class="file" id="upload" /> 
				 			
				 			
			<button class="btn" type="submit">submit</button>
		</form>
	</div>
</body>
</html>
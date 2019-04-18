<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>蚂蚁街舞官网</title>

<style>
*{
	margin:0;
	padding:0;
}
body{
background-color: #262626;       
}
#box{
	width:1000px;
	height:400px;
	margin:200px auto;
}
#box .qrcode{
	width:400px;
	height: 400px;
	float: left;
	margin: 80px 50px;
}
#box .introduce{
	width:500px;
	height: 400px;
	float: left;
	margin:70px 0px;
	
}
.introduce p{
	width:200px;
	height: 40px;
	background: #333; 
	float: left;
	margin:10px 20px;
	color:#fff;
	border-radius: 5px;
	overflow: hidden;
}
.introduce p span{
	float: left;
	width:50px;
	height:40px;
	color:#fff;
	text-align: center;
	line-height: 40px;
}
.introduce p input{
	width:150px;
	height:40px;
	float: left;
	border: 0;
	color:#fff;
	background:#000;
	text-indent:10px; 
	outline: none;
}
.introduce .btn{
	width:440px;
	height:40px;
	text-align: center;
	line-height: 40px;
	background: #6c0;
	cursor: pointer;
	
}
.introduce .btn:hover{
	background-color: white;
	color: black;
}
.qrcode>img{
	display: block;border:5px solid white;
}
.logo{
	position:absolute;
	top:-80px;
	left:630px;
	width:300px;
	height:300px;
}
.logo img {
	width: 100%;
	height: 100%;
	border-radius: 80px;
}
h3{
	position:absolute;
	top:200px;
	left:450px;
}
.tx{
	width:160px;
	height:160px;
	border-radius: 80px;
	margin:-60px 0px;
}
.tx img{
	width:100%;height:100%;
	border-radius: 80px;
}
</style>

</head>
<body>

<div id="box">
	<img class="logo" src="imgs/logowei.png" />
	<h3 style="color: aliceblue;font-size:30px" >个人资料</h3>
	<div class="tx">
		<img alt="" src="${sessionScope.teacher.timg_src }">
	</div>
	<div class="introduce">
		<p>
			<span>姓名：</span>
			<input type="text" id="name" value="${sessionScope.teacher.teacherName }">
		</p>
		<p>
			<span>性别：</span>
			<input type="text" id="company" value="${sessionScope.teacher.teacherSex }">
		</p>
		<p>
			<span>职业：</span>
			<input type="text" id="title" value="老师">
		</p>
		<p>
			<span>舞龄：</span>
			<input type="text" id="address" value="${sessionScope.teacher.danceAge }">
		</p>
		<p>
			<span>手机：</span>
			<input type="text" id="mobile" value="${sessionScope.teacher.phone }">
		</p>
		<p>
			<span>序号：</span>
			<input type="text" id="email" value="${sessionScope.teacher.teacherNumber }">
		</p>
		<p>
			<span>密码：</span>
			<input type="text" id="web" value="${sessionScope.teacher.teacherPassword }">
		</p>
		<p>
			<span>班级：</span>
			<input type="text" id="desc" value="${sessionScope.danceClass.danceclass_id }">
		</p>
		<p class="btn">查看微信二维码</p>
	</div>
	<div class="qrcode" id="qrcode"></div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/qrcode.js"></script>
<script>
var name, company, title, address, mobile, email, web, desc;
$(".btn").click(function() {
	name = "FN:" + $("#name").val() + "\n";             //姓名
	company = "ORG:" + $("#company").val() + "\n";      //公司
	title = "TITLE:" + $("#title").val() + "\n";        //职务
	address = "WORK:" + $("#address").val() + "\n";     //地址
	mobile = "TEL:" + $("#mobile").val() + "\n";        //手机
	email = "EMAIL:" + $("#email").val() + "\n";        //邮箱
	web = "URL:" + $("#web").val() + "\n";              //网址
	desc = "NOTE:" + $("#desc").val() + "\n";           //备注

	var info = "BEGIN:VCARD\n" + name + company + title + address + mobile + email + web + desc + "END:VCARD";
	//console.log(info);
	//生成二维码
	var qrcode = new QRCode("qrcode");
	qrcode.makeCode(info);

})
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#ffffff">
</div>
</body>
</html>
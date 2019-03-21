<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
<title>蚂蚁街舞官网</title>
<style>
* {
	padding: 0px;
	margin: 0px;
}

body {
	background-color: black;
	font-family: "微软雅黑";
	color:white;
}

.div_big {
	width: 100%;
	height: 100%;
}

.div_big2 {
	width: 100%;
	height: 1500px;
}

.div_top {
	color: white;
	background: url(imgs/1111.jpg) no-repeat;
	background-size: 100% 100%;
	width: 100%;
	height: 850px;
}

.div_middle {
	width: 100%;
	height: 970px;
	background-color:white;
	color:black;
}

.div_bottom {
	text-align: center;
	width: 100%;
	height: 150px;
}

.logobai {
	position: absolute;
	top: 30px;
	left: 20px;
}

ul {
	position: absolute;
	top: 200px;
	left: 60px;
}

li {
	font-size: 18px;
	list-style-type: none;
}

a {
	color: white;
	text-decoration: none;
}

.hr1 {
	position: absolute;
	top: 470px;
	left: 60px;
	background-color: white;
	border: none;
	height: 3px;
	width: 67.5px;
}

.hr2 {
	position: absolute;
	top: 1150px;
	left: 120px;
	background-color: white;
	border: none;
	height: 3px;
	width: 130px;
}

.hr3 {
	position: absolute;
	top: 1150px;
	left: 505px;
	background-color: white;
	border: none;
	height: 3px;
	width: 130px;
}

.hr4 {
	position: absolute;
	top: 1150px;
	left: 890px;
	background-color: white;
	border: none;
	height: 3px;
	width: 130px;
}

.hr5 {
	position: absolute;
	top: 1150px;
	left: 1250px;
	background-color: white;
	border: none;
	height: 3px;
	width: 130px;
}

.ziti {
	position: absolute;
	top: 350px;
	left: 650px;
	font-size: 60px;
}

a:hover {
	font-weight: bold;
	text-decoration: underline;
}

.ending {
	margin: 0 auto;
	text-align: center;
	color: white;
	font-size: 15;
}

.logowei {
	width: 230px;
	height: 230px;
	position: absolute;
	top: 1725px;
	left: 50px;
}

.time1 {
	width: 100%;
	height: 50px;
	background: #FFF000;
	line-height: 50px;
	text-align: center;
}
#info{
	position:absolute;
	top:900px;
	left:600px;
	font-weight:900;
	font-size:20px;
}
h1{
	position:absolute;
	top:950px;
	left:625px;
}
.add{
	text-align:center;
	position:absolute;
	top:900px;
	left:840px;
	border:1px solid #000;
	width:25px;
	height:25px;
	cursor:pointer;
	background: rgba(255, 255, 255, 0.7);
}
.subtract{
	text-align:center;
	position:absolute;
	top:900px;
	left:555px;
	border:1px solid #111;
	width:25px;
	height:25px;
	cursor:pointer;
	background: rgba(255, 255, 255, 0.7);
}

</style>
<script type="text/javascript">

	function getNowDate() {
		var date = new Date();
		var year = date.getFullYear() // 年
		var month = date.getMonth() + 1; // 月
		var day = date.getDate(); // 日
		var hour = date.getHours(); // 时
		var minutes = date.getMinutes(); // 分
		var seconds = date.getSeconds() //秒
		var weekArr = [ '星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六' ];
		var week = weekArr[date.getDay()];
		// 给一位数数据前面加 “0”
		if (month >= 1 && month <= 9) {
			month = "0" + month;
		}
		if (day >= 0 && day <= 9) {
			day = "0" + day;
		}
		if (hour >= 0 && hour <= 9) {
			hour = "0" + hour;
		}
		if (minutes >= 0 && minutes <= 9) {
			minutes = "0" + minutes;
		}
		if (seconds >= 0 && seconds <= 9) {
			seconds = "0" + seconds;
		}
		document.getElementById("info").innerHTML = year + "年" + month + "月"
				+ day + "日" + " " + week;
	//	return currentdate;
		

	}

	
</script>
</head>
<body oncontextmenu='return false' onload="getNowDate()"
	ondragstart='return false' onselectstart='return false'
	onselect='document.selection.empty()'
	oncopy='document.selection.empty()' onbeforecopy='return false'
	onmouseup='document.selection.empty()'>
	<div class="div_big">
		<div class="div_big2">
			<div class="div_top">
				<a href="home.jsp"><img src="imgs/logobai.png" class="logobai"
					width="130" height="130"></a>
				<ul>
					<li><a href="">关于</a></li>
					<br />
					<li><b><a href="mentor.jsp">指导员</a></b></li>
					<br />
					<li><b><a href="curriculum.jsp">CLASS</a></b></li>
					<br />
					<li><a href="">视频</a></li>
					<br />
					<li><a href="">合作伙伴</a></li>
					<br />
					<li><b><a href="">STORE</a></b></li>
				</ul>
				<hr class="hr1" />
				<div class="ziti">
					<b>指导员</b>
				</div>
			</div>
			<div class="div_middle">
				<div class="fl">
					<button class="subtract" onclick="daysJian()"> < </button>
					<span id="info"></span>
					<button class="add" onclick="addDate()">></button>
					<h1>今天的课程</h1>
					<iframe width="300" scrolling="no" height="25" frameborder="0"
						allowtransparency="true"
						src="http://i.tianqi.com/index.php？c=code&id=10&icon=1&site=12"></iframe>
				</div>
			</div>
			<div class="div_bottom">
				<img class="logowei" src="imgs/logowei.png" />
				<div class="ending">
					江西省抚州市临川区 Ant-street-dance-studio 营业执照号码：92361002L75863591Q<br />
					联合创始人：张重民&nbsp;&nbsp;&nbsp; 传真：15070426430<br />
					电子邮箱：1003672961@qq.com<br />
					<br />
					<br /> <font size="1">&copy;2018.ANTMYDANCE Inc保留所有权利。</font>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
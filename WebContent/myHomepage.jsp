<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
	top: 1200px;
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
	top: 1050px;
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
			<font size="5"><a href="">资料</a>·<a href="">官网</a>·<a href="">修改资料</a></font>
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
				<img src="imgs/1.jpg" onmouseover="xuanzhuan()" />
			</div>
			<a href="home.jsp"><button>官网入口</button></a>
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
	<script type="text/javascript">
		//页面下滑
		var oSkip = document.getElementById("skip");
		var oTarget = document.getElementById("box");
		var oTarget_Top = oTarget.offsetTop;
		oSkip.onclick = function() {
			starmove(oTarget_Top);
		}
		function starmove(top) {
			var timer = '';
			var speed = 1;
			timer = setInterval(function() {
				var t = document.documentElement.scrollTop
						|| document.body.scrollTop;
				if (t < top) {
					if (document.documentElement.scrollTop) {
						document.documentElement.scrollTop = speed;
					} else {
						document.body.scrollTop = speed;
					}
					speed += 4;
				} else {
					clearInterval(timer);
				}
			}, 10);

		}

		//头像转动
		var canTransition = function() {
			var el = document.createElement('foo');
			el.style.cssText = '-webkit-transition: all .5s linear;';
			return !!el.style.webkitTransitionProperty;
		}();
		var o = document.getElementById('demo');
		function rotationImg() {
			if (document.all) {
				var i = 0, j = 0, vx = 0, vy = 0, exp = 1 / 36;
				function run(angle) {
					j++;
					vx = Math.cos(angle * Math.PI / 180) * j * exp;
					vy = Math.sin(angle * Math.PI / 180) * j * exp;
					with (o.filters.item(0)) {
						M11 = M22 = vx;
						M12 = -(M21 = vy);
						M22 = vx;
					}
					o.style.top = (333 - o.offsetHeight) / 2 + 'px';
					o.style.left = (500 - o.offsetWidth) / 2 + 'px';
				}
				function doRotation() {
					o.onfilterchange = doRotation;
					i += 10;
					if (i > 359) {
						i = 0;
						o.onfilterchange = null;
					}
					run(i);
				}
				doRotation();
			} else {
				if (canTransition) {
					o.style.webkitTransition = '-webkit-transform 1s ease-in';
					o.style.webkitTransform = 'rotate(360deg)';
				}
			}
		}
		function xuanzhuan() {
			rotationImg();
			o.onclick = function() {
				rotationImg();
			}
		}
		//浮框
		window.onload = function() {
			var oDiv = document.getElementById("fixPara"), H = 0, Y = oDiv
			while (Y) {
				H += Y.offsetTop;
				Y = Y.offsetParent;
			}
			window.onscroll = function() {
				var s = document.body.scrollTop
						|| document.documentElement.scrollTop
				if (s > H) {
					oDiv.style = "position:fixed;top:0;"
				} else {
					oDiv.style = ""
				}
			}
		}
	</script>
</body>
</html>
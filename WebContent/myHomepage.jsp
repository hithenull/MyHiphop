<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>蚂蚁街舞官网</title>

<style>
* {
	margin: 0px;
	padding: 0px;
}

body {
	color:black;
}

.big {
	margin: 0 auto;
	position: relative;
	width: 1505px;
	height: 100%;
	border: 1px solid #ccc;
}

.top {
	height: 800px;
	border: 1px solid red;
	width: 1505px;
	background: url(imgs/information.jpg);
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	
	text-align: center;
	line-height: 600px;
}


.middle {
	text-align:center;
	font-size:20px;
	height: 450px;
	border: 1px solid yellow;
	width: 1505px;
}

.logobai {
	height: 100px;
	width: 100px;
	margin: -50px 0px;
}

.mydance {
	position: absolute;
	top: 60px;
	left: 250px;
}

.picture {
	width: 80px;
	height: 80px;
	border-radius: 40px;
	margin: -10px 565px;
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
	border-radius: 40px;
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
	width: 1505px;
	height: 100px;

}
.levitate:hover{
	box-shadow:#ccc 0px 0px 30px 5px ;
}

h1 {
	color: black;
	font-size: 60px;
		
}
hr{
	border:0px;
	height:2px;
	width:100px;
	background-color: black;
	margin: -220px 705px;
}
button{
	background: none;
	border:1px solid black;
	width:106px;
	height:53px;
	font-size:16px;
	cursor:pointer;
	position: absolute;
	top:550px;
	left:700px;
	
}
button:hover {
	background-color: black;
	color:white;
}
ul{
	list-style:none;
	margin:0px;
	padding:0px 430px;
	width:auto;
}
ul li{
	float:left;
	padding:40px 90px;
}

</style>
</head>
<body>
	<div class="big">
		<div class="top" id="container" onmouseover="xuanzhuan()" >
			<h1>个人中心</h1>
			<hr />
			<font size="5"><a href="">资料</a>·<a href="">官网</a>·<a href="">修改资料</a></font>
			<br/>
			<a id="skip"><button>关于自己</button></a>
		</div>
		<div class="levitate">
			<ul>
				<li><a href="">关于</a></li>
				<li><a href="">资料</a></li>
				<li><a href="">修改</a></li>
			</ul>
		</div>
		<div class="middle" id="box">
			关于我
			<hr />
		</div>
		<script>
		//页面下滑
		 var oSkip = document.getElementById("skip");
		   var oTarget = document.getElementById("box");
		   var oTarget_Top = oTarget.offsetTop;
		   oSkip.onclick=function(){
		     starmove(oTarget_Top);
		   }
		  function starmove(top){
		    var timer = '';
		    var  speed =1;
		    timer = setInterval(function(){
		      var t = document.documentElement.scrollTop || document.body.scrollTop;
		      if(t < top){
		        if(document.documentElement.scrollTop){
		          document.documentElement.scrollTop= speed;
		        }else {
		          document.body.scrollTop=speed;
		        }
		        speed+=5;
		      }else{
		        clearInterval(timer);
		      }
		    },10);
	
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
			
		</script>

	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
<title>蚂蚁街舞官网</title>
<link rel="stylesheet" type="text/css" href="css/simple-calendar.css">
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
		left: 680px;
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
	#info_1{
		position:absolute;
		top:900px;
		left:750px;
		font-size:20px;
		
	}
	#info{
		position:absolute;
		top:900px;
		left:620px;
	}
</style>
<script src="laydate/laydate.js"></script>
<script type="text/javascript">
	
	var arrdays = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
	var weeks = new Array("星期天","星期一","星期二","星期三","星期四","星期五","星期六");
	var myDate = new Date();
	var year = myDate.getFullYear();    //获取完整的年份(4位,1970-????)
	var month = myDate.getMonth()+1;      //获取当前月份(0-11,0代表1月)
	var day = myDate.getDate();    		//获取当前日(1-31)
	var week = myDate.getDay(); 		//获取当前星期X(0-6,0代表星期天)
	window.onload=function(){
		print();	
		lay('#version').html('-v'+ laydate.v);

		//执行一个laydate实例
		laydate.render({
		  elem: '#info' //指定元素
			  	,showBottom: false
				,done: function(value, date){
					 var b = new Date(Date.parse(value.replace(/\-/g,"/")));
				     document.getElementById("info_1").innerHTML=weeks[b.getDay()];
				 }
		});

	}
	
	function print(){
		document.getElementById("info").innerHTML="";
		if (month < 10) {
		    month = "0" + month;
		}
		if (day < 10) {
		    day = "0" + day;
		    
		}
		
		document.getElementById("info").innerHTML=year + "-" + month + "-" + day;
		var dateStr = year+"-"+month+"-"+day;
        var a = new Date(Date.parse(dateStr.replace(/\-/g,"/")));
        document.getElementById("info_1").innerHTML=weeks[a.getDay()];
	}
	
	function addDate(){
		var date = document.getElementById("info").innerHTML;
		year = parseInt(date.slice(0,4));
		if(isLeapYear(year)){
			arrdays[1]=29;
		}else{
			arrdays[1]=28;
		}
		month = parseInt(date.slice(5,7));
		day = parseInt(date.slice(8,10));
		day = day+1;
		if(arrdays[month-1]<day){			//日期大于该月最大值
			day = 1;						//日期变为1
			month = month+1;				//月份加一
			if(month>12){					//月份大于12
				month = 1;					//月份变为1
				year = year + 1;			//年份加1
				print();
			}else{
				print();
			}
			
		}else{
			print();
		}
	}
	function daysJian(){
		var date = document.getElementById("info").innerHTML;
		year = parseInt(date.slice(0,4));
		if(isLeapYear(year)){
			arrdays[1]=29;
		}else{
			arrdays[1]=28;
		}
		month = parseInt(date.slice(5,7));
		day = parseInt(date.slice(8,10));
		day = day-1;									
		if(day<1){
			if(month<1){
				month = month+11;
			}
			day = arrdays[month-2];
			month = month-1;
			if(month<1){
				month = 12;
				day = 31;
				year = year-1;
				print();
			}else{
				print();
			}
		}else{
			print();
		}
	}
	function isLeapYear (Year) {			//闰年判断**************
		if (((Year % 4)==0) && ((Year % 100)!=0) || ((Year % 400)==0)) {
			return (true);
		} else { 
			return (false);
		}
	}
	
</script>
</head>
<body>
	<div class="div_big">
		<div class="div_big2">
			<div class="div_top">
				<a href="home.jsp"><img src="imgs/logobai.png" class="logobai"width="130" height="130"></a>
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
					<b>课程</b>
				</div>
			</div>
			<div class="div_middle">
				<div class="fl">
					<button class="subtract" onclick="daysJian()"> < </button>
					<div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="info" ></span></span>&nbsp;&nbsp;<span id="info_1"></span>
					</div>
					<button class="add" onclick="addDate()">></button>
					<h1>今天的课程</h1>
					<iframe width="300" scrolling="no" height="25" frameborder="0"allowtransparency="true"
											src="http://i.tianqi.com/index.php？c=code&id=10&icon=1&site=12">
					</iframe>
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
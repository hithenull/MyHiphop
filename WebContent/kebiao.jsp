<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>个人课表</title>

<link rel="stylesheet" type="text/css" href="css/simple-calendar.css">
<style>

	
	body {
		background-color: black;
		font-family: "微软雅黑";
		color:white;
	}
	

	.div_big2 {
		width: 100%;
		height: 1150px;
	}
	.fl{
	
	  width:500px;
	  height:200px;
	  margin-left: 550px;
	  margin-top: 120px;
	  	
	}
	
	.div_middle {
		width: 100%;
		height: 970px;
		background: url(imgs/kebiao.jpg) no-repeat;
		background-size: 100% 100%;
		background-color:white;
		color:white	;
		border:1px solid #ffffff;
	}
	.tb{
	   width: 1200px;
	   height: 450px;
	   margin-left:200px;
	   margin-top: 20px;
	}
	tr:hover{
	  color:red;
	}
	table{
	  text-align: center;
	  	
	}
	.di{
	    width:100%;
	    height:170px;
	    text-align: center;
	    
	}
	.logowei {
		width: 230px;
		height: 230px;
		position: absolute;
		top: 900px;
		left: 50px;
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

<div class=div_big2>
    <div class="div_middle">
				<div class="fl">
				<h1>&nbsp;&nbsp;&nbsp;今天的课程</h1>
					<button class="subtract" onclick="daysJian()"> < </button>
					
						&nbsp;&nbsp;&nbsp;<span id="info" ></span></span>&nbsp;&nbsp;<span id="info_1"></span>
					
					<button class="add" onclick="addDate()">></button>
					
					<iframe width="300" scrolling="no" height="25" frameborder="0"allowtransparency="true"
											src="http://i.tianqi.com/index.php？c=code&id=10&icon=1&site=12">
					</iframe>
				</div>
				   <div class="tb">
				     <table  border=1px; width=100%; height=100%;>
				       <tr>
				         <td></td>
				         <td>时间</td>
				         <td>老师</td>
				         <td>内容</td>
				         <td>教室</td>
				       </tr>
				       <tr>
				         <td rowspan="2">上午</td>
				         <td>8:00~10:00</td>
				         <td>3</td>
				         <td>4</td>
				         <td>5</td>
				       </tr>
				       <tr>
				         <td>10:20~12:00</td>
				         <td>3</td>
				         <td>4</td>
				         <td>5</td>
				       </tr>
				       
				       
				       <tr>
				         <td rowspan="2">下午</td>
				         <td>14:00~15:30</td>
				         <td>3</td>
				         <td>4</td>
				         <td>5</td>
				       </tr>
				       <tr>
				         <td>15:40~17:00</td>
				         <td>3</td>
				         <td>4</td>
				         <td>5</td>
				       </tr>
				     </table>
				   </div>
			</div>
			<div class="di">
		        <img class="logowei" src="imgs/logowei.png" />
					江西省抚州市临川区 Ant-street-dance-studio 营业执照号码：92361002L75863591Q<br />
					联合创始人：张重民&nbsp;&nbsp;&nbsp; 传真：15070426430<br />
					电子邮箱：1003672961@qq.com<br />
					<br />
					<br /> <font size="1">&copy;2018.ANTMYDANCE Inc保留所有权利。</font>
			</div>
		
		</div>

	  
</body>
</html>
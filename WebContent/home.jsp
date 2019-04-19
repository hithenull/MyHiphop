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
		
		<script type="text/javascript" src="js/home.js"></script>
		<style>
				*{
				padding:0px;
				margin:0px;
			}
			body{
				font-family:"微软雅黑";
				background-color:black;
			}
			.div_big{
				width:100%;
				height:100%;
			}
			.div_big2{
				width:100%;
				height:1500px;
				
			}
			.div_top{
				color:white;
				background:url(imgs/top.jpg) no-repeat;
				background-size:100% 100%;
				width:100%;
				height:850px;
				
			}
			.div1{
				opacity:0.5;filter(alpha=100);
				width:379.25px;
				height:570px;
				float:left;
				
			}
			.div1:hover{
				opacity:1;filter(alpha=100)
				position:relative;
			}
			.div2{
				opacity:0.5;filter(alpha=100);
				width:379.25px;
				height:570px;
				float:left;
				position:relative;
			}
			.div2:hover{
				opacity:1;filter(alpha=100);
			}
			.div3{
				opacity:0.5;filter(alpha=100);
				width:379.25px;
				height:570px;
				float:left;
			}
			.div3:hover{
				opacity:1;filter(alpha=100);
			}
			.div4{
				
				width:379.25px;
				height:570px;
				float:left;
				opacity:0.5;filter(alpha=100);
			}
			.div4:hover{
				opacity:1;filter(alpha=100)
				position:relative;
			}
			
			
			.div_middle{
				
				width:100%;
				height:570px;
			}
			.div_bottom{
				
				
				text-align:center;
				width:100%;
				height:150px;
			}
			.logobai{
				
				position:absolute;
				top:30px;
				left:20px;
			}
			ul{
				
				position:absolute;
				top:200px;
				left:60px;
			}
			li{
				
				font-size:18px;
				list-style-type :none;
			}
			a{
				color:white;
				text-decoration:none;
			}
			.hr1{
				position:absolute;
				top:400px;
				left:60px;
				background-color:white;
				border:none;
				height:3px;
				width:67.5px;
			}
			.hr2{
				position:absolute;
				top:1150px;
				left:120px;
				background-color:white;
				border:none;
				height:3px;
				width:130px;
			}
			.hr3{
				position:absolute;
				top:1150px;
				left:505px;
				background-color:white;
				border:none;
				height:3px;
				width:130px;
			}
			.hr4{
				position:absolute;
				top:1150px;
				left:890px;
				background-color:white;
				border:none;
				height:3px;
				width:130px;
			}
			.hr5{
				position:absolute;
				top:1150px;
				left:1250px;
				background-color:white;
				border:none;
				height:3px;
				width:130px;
			}
			.ziti{
				position:absolute;
				top:350px;
				left:550px;
				font-size:60px;
			}
			a:hover{
				
				font-weight:bold; text-decoration:underline;
			}
			.div1_mask{
				
				width:171px;
				height:53.4px;
				background-color:white;
				font-size:15px;
				position:absolute;
				top:1300px;
				left:100px;
				display:none;
			}
			.div2_mask{
				width:171px;
				height:53.4px;
				background-color:white;
				font-size:15px;
				position:absolute;
				top:450px;
				left:105px;
				display:none;
			}
			.div3_mask{
				width:171px;
				height:53.4px;
				background-color:white;
				font-size:15px;
				position:absolute;
				top:1300px;
				left:870px;
				display:none;
			}
			.div4_mask{
				width:171px;
				height:53.4px;
				background-color:white;
				font-size:15px;
				position:absolute;
				top:1300px;
				left:1235px;
				display:none;
			}
			.baoming{
				color:white;
				position:absolute;
				top:1050px;
				left:125px;
				font-size:30px;
			}
			.curriculum{
				color:white;
				position:absolute;
				top:1050px;
				left:510px;
				font-size:30px;
			}
			.achievement{
				color:white;
				position:absolute;
				top:1050px;
				left:895px;
				font-size:30px;
			}
			.route{
				color:white;
				position:absolute;
				top:1050px;
				left:1280px;
				font-size:30px;
			}
			.div1_sub{
				font-size:20px;
				position:absolute;
				top:1310px;
				left:145px;
				color:black;
				display:none;
			}
			.div2_sub{
				font-size:20px;
				position:absolute;
				top:460px;
				left:150px;
				color:black;
				display:none;
			}
			.div3_sub{
				font-size:20px;
				position:absolute;
				top:1310px;
				left:915px;
				color:black;
				display:none;
			}
			.div4_sub{
				font-size:20px;
				position:absolute;
				top:1310px;
				left:1280px;
				color:black;
				display:none;
			}
			.txtShow .div1_mask ,.txtShow .div1_sub {
				display:block;
			}
			.txtShow .div2_mask ,.txtShow .div2_sub {
				display:block;
			}
			.txtShow .div3_mask ,.txtShow .div3_sub {
				display:block;
			}
			.txtShow .div4_mask ,.txtShow .div4_sub {
				display:block;
			}
			.baoming1{
				position:absolute;
				top:1200px;
				left:100px;
				color:white;
				
			}
			.curriculum1{
				position:absolute;
				top:1200px;
				left:500px;
				color:white;
			}
			.achievement1{
				position:absolute;
				top:1200px;
				left:890px;
				color:white;
			}
			.route1{
				position:absolute;
				top:1200px;
				left:1230px;
				color:white;
			}
			.logowei{
				width:250px;
				height:250px;
				position:absolute;
				top:1350px;
				left:50px;
			}
			.ending{
				margin:0 auto;
				text-align:center;
				color:white;
				font-size:15px;
			}
			.login{
				font-weight:500px;
				text-align:center;
				font-size:15px;
				position:absolute;
				left:1350px;
				top:70px;
				border-color:white;
				text-decoration:none;
				width:80px;
				height:20px;
				border:2px solid white;
				border-radius: 10px;
			}
			
			
			
		</style>
	</head>
	<body oncontextmenu='return false' 		ondragstart='return false' onselectstart ='return false' onselect='document.selection.empty()' oncopy='document.selection.empty()' onbeforecopy='return false' onmouseup='document.selection.empty()'>
		<div class="login"><a href="login.jsp">学员登录</a></div>
		<div class="div_big">
			
			<div class="div_big2">
				<div class="div_top">
					 
					<a href="home.jsp"><img src="imgs/logobai.png" class="logobai" width="130px" height="130px"></a>
					<ul>
						<li><a href="templatemo.jsp">关于</a></li></br>
						<li><a href="tupianyidong.jsp">指导员</a></li></br>
						<li><b><a href="curriculum.jsp">CLASS</a></b></li></br>
						<li><a href="shiping.jsp">视频</a></li></br>
					</ul>
						<hr class="hr1"/>
					<div class="ziti">
						<b>ANT</b>舞蹈<b>工作室</b>
					</div>
				</div>
				<div class="div_middle">
					<div id="div1" class="div1">
						<img src="imgs/1.jpg" width="100%" height="100%">
						<div class="div1_mask"></div>
						<a href="registr.jsp" target="_blank" class="div1_sub">报名入口</a>
					</div>
					<b class="baoming">如何报名</b>
					<hr class="hr2"/>
					<font class="baoming1" size="4" >喜欢街舞？想要报名？<br/>快来加入我们吧！！！</font>
					<div id="div2" class="div2">
						<img src="imgs/2.jpg" width="100%" height="100%">
						<div class="div2_mask"></div>
						<a href="public_findPage_danceclass" class="div2_sub">查看课表</a>
					</div>
					<b class="curriculum">课程安排</b>
					<hr class="hr3" />
					<font class="curriculum1" size="4">查看具体上课时间</font>
					<div id="div3" class="div3">
						<img src="imgs/3.jpg" width="100%" height="100%">
						<div class="div3_mask"></div>
						<a href="shiping.jsp" class="div3_sub">查看视频</a>
					</div>
					<b class="achievement">成果展示</b>
					<hr class="hr4" />
					<font class="achievement1" size="4">观看成果展视频</font>
					<div id="div4" class="div4">
						<img src="imgs/4.jpg" width="100%" height="100%">
						<div class="div4_mask"></div>
						<a href="ditu2.jsp" class="div4_sub">怎么去那</a>
					</div>
					<b class="route">路 线</b>
					<hr class="hr5" />
					<font class="route1" size="4">查看蚂蚁街舞校区地址</font>
				</div>
			</div>
			<div class="div_bottom">
				<img class="logowei" src="imgs/logowei.png" />
				<div class="ending">
				江西省抚州市临川区 Ant-street-dance-studio 营业执照号码：92361002L75863591Q</br>
				联合创始人：张重民&nbsp;&nbsp;&nbsp; 传真：15070426430</br>
				电子邮箱：1003672961@qq.com<br/></br></br>
				<font size="1">&copy;2019.ANTMYDANCE Inc保留所有权利。</font>
				</div>
			</div>
		</div>
		


	</body>
</html>
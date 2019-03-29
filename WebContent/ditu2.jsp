<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<title>展示公交换乘的结果面板</title>
	<style type="text/css">
		#l-map{
			height:450px;width:1210px;
			margin:25px 25px;
			box-shadow: 10px 10px 100px #d3d3d1;
		}
		#r-result{
			width: 1500px;
			font-size:10px;
			float:left;
		}
		#f_div{
			width: 250px;height: 490px;
			float:left;
			background-color:#e6e8e9;
			border:1px solid #d2d4d5;
			box-shadow: 10px 10px 8px #d3d3d1;
		}
		#t_div{
			width: 290px;height: 320px;
			margin:150px 5px;
		}
		#input_a{
			height:30px;
			box-shadow: 2px 2px 0px #888888;
		}
		#input_b{
			height:30px;
			box-shadow: 2px 2px 0px #888888;
		}
		#title{
			width:100%;height:40px;
			background-color:#096aa8;
			
		}
		#span_1{
			font-size:24px;
			color:white;
		}
		#map{
			height:486px;width:1250px;
			margin:-490px 250px;
			float:left;
		}
		#title2{
			width:1501px;height:40px;
			background-color:#e6e8e9;
			border:1px solid #d2d4d5;
			box-shadow: 10px 10px 8px #d3d3d1;
		}
		.text_div{
			width:201px;height:20px;
			margin:7px 10px;
		}
		#time{
			width:301px;height:30px;
			font-size:16px;
			margin:-20px 1235px;
		}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=GUqfGzUrDtZRDwLZG71CouHWkwdB7XeI">
	</script>
</head>
<body>
	<div id="title">
		&nbsp;&nbsp;<span id="span_1">江西制造职业技术学院</span>
		<div id="time">当前时间：
		     <span id="y"></span>
		     <span id="mo"></span>
		     <span id="d"></span>
		     <span id="h"></span>
		     <span id="m"></span>
		     <span id="s"></span>
		</div>
	</div>
	<div id="title2"><div class="text_div">&nbsp;&nbsp;<a href=home.jsp>首页</a>&nbsp;&nbsp;》地图导航</div></div>
	<div id="f_div">
		<div id="t_div">
			出发点：<input type="text" id="input_a"><br /><br />
			到达地：<input type="text" id="input_b" readonly="readonly" value="江西制造职业技术学院"><br /><br /><br />
			<input type="submit" style = "width:240px; height:40px;background-color:blue; " value="查询" onclick="findMap()" class="button">
		</div>
	</div>
	<div id="map">
		<div id="l-map"></div>
	</div>
	<div id="r-result"></div>
</body>
</html>
<script type="text/javascript">

		var map = new BMap.Map("l-map");
		var point = new BMap.Point(116.0092350000,28.6780160000);
		map.centerAndZoom(point, 14);
		var marker = new BMap.Marker(point);  // 创建标注
		map.addOverlay(marker);               // 将标注添加到地图中
		marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
		window.onload=function(){
            //每1秒刷新时间
          setInterval("NowTime()",1000);
        }
        function NowTime(){
            //获取年月日
            var time=new Date();
            var year=time.getFullYear();
            var month=time.getMonth()+1;
            var day=time.getDate();
            
            //获取时分秒
            var h=time.getHours();
            var m=time.getMinutes();
            var s=time.getSeconds();
            
            //检查是否小于10
            h=check(h);
            m=check(m);
            s=check(s);
            document.getElementById("time").innerHTML="当前时间："+year+"年"+month+"月"+day+"日  "+h+":"+m+":"+s;
        }
        //时间数字小于10，则在之前加个“0”补位。
        function check(i){
            //方法一，用三元运算符
            var num;
            i<10?num="0"+i:num=i;
            return num;
            
            //方法二，if语句判断
            //if(i<10){
            //    i="0"+i;
            //}
            //return i;
        }
		function findMap(){
			// 百度地图API功能
			var transit = new BMap.TransitRoute(map, {
				renderOptions: {map: map, panel: "r-result"}
			});
			var start =  document.getElementById("input_a").value;
			transit.search(start, "江西制造职业技术学院");
		}
		map.enableScrollWheelZoom(true);
</script>
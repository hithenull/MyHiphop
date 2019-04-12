<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
  
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>教导员</title>
<link rel="stylesheet" href="css/style.css">

</head>


<body>
<div id="wrap" >
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="images/yujing.jpg" style="width:300px;height:450px;">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="images/yujing.jpg">
  </div>
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="images/huluwa.jpg" style="width:300px;height:450px;">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="images/huluwa.jpg" >
  </div>
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="images/yiyi.jpg" style="width:300px;height:450px;">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="images/yiyi.jpg" alt="">
  </div>
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="images/yujing.jpg" style="width:300px;height:450px;">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="images/yujing.jpg" alt="">
  </div>
   <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="images/xuanxuan.jpg" style="width:300px;height:450px;">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="images/xuanxuan.jpg" alt="">
  </div>
</div>
<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>	

<script type="text/javascript">

$(document).ready(function(){
	  var docWidth = $('body').width(),
		  $wrap = $('#wrap'),
		  $images = $('#wrap .hb'),
		  slidesWidth = $wrap.width();
	  
	  $(window).on('resize', function(){
		docWidth = $('body').width();
		slidesWidth = $wrap.width();
	  })
	  
	  $(document).mousemove(function(e) {
		var mouseX = e.pageX,

		offset = mouseX / docWidth * slidesWidth - mouseX / 2;

		
		$images.css({
		  '-webkit-transform': 'translate3d(' + -offset + 'px,0,0)',
				  'transform': 'translate3d(' + -offset + 'px,0,0)'
		});
	  });
	})
</script>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<h2>Hiphop舞蹈工作室</h2><br />
<h3>部分教导员信息</h3>
</div>

</body>
</html>
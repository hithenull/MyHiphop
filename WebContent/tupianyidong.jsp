<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>教导员</title>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body style="">

<div id="wrap">
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="imgs/7.jpg" alt="">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="imgs/7.jpg" alt="">
  </div>
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="imgs/8.jpg" alt="">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="imgs/8.jpg" alt="">
  </div>
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="imgs/9.jpg" alt="">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="imgs/9.jpg" alt="">
  </div>
  <a href="#" class="hb" style="transform: translate3d(-714.272px, 0px, 0px);">
	<div class="c">
	  <img src="imgs/6.jpg" alt="">
	  <div class="txt">
		<h1>Title here</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="imgs/6.jpg" alt="">
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
<p>适用浏览器：360、FireFox、Chrome、Opera、傲游、搜狗、世界之窗. 不支持Safari、IE8及以下浏览器。</p>
<p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
</div>

</body>
</html>
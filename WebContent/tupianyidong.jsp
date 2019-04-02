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
	  <img src="images/xuanxuan.jpg" style="height:500px;width:350px;" alt="">
	  <div class="txt">
		<h1>旋旋</h1>
		<p>Some longer text here thats wide enough to span on several lines.</p>
	  </div>
	</div>
  </a>
  <div class="fullBg">
	<img src="images/xuanxuan.jpg" alt="" style="height:800px;width:650px;margin:0px 450px;">
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
	var list = <%=request.getAttribute("list")%>
		 window.onload = function (){
		    	
		 if(list == null){
			window.location.href="teacher_findteacher";
		 }else{
		    return;
		 }
		    	
	}
</script>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p><h2>Hiphop舞蹈工作室</h2></p><br />
<p><h3>部分教导员信息</h3></p>
</div>

</body>
</html>
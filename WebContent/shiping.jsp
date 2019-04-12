<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>相关视频</title>

<!--可无视-->
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/reset.css">

<!--布局样式，意义不大-->
<link rel="stylesheet" href="css/demo.css">

<!--核心样式-->
<link rel="stylesheet" href="css/ckin.css">

</head>
<body>

<section class="demo-section demo-section--light" id="demo">
	<div class="container">
		<h2 class="title heading">舞蹈视频播放界面</h2>
		
		
		<video poster="imgs/3.jpg" src="images/11.MP4" data-ckin="default" data-overlay="1" data-title="女子舞蹈视频"></video>
		
		
	
		
	</div>
</section>

<section class="demo-section demo-section--light" id="skins">
	<div class="container">
		<h2 class="title heading">视频</h2>
		<ul class="demo-list">
			<li class="demo-list__item">
				<p>女子舞蹈天团</p>
				<video poster="imgs/3.jpg" src="images/22.mp4" data-ckin="minimal" data-overlay="1"></video>
			</li>
			<li class="demo-list__item">
				<p>男子舞蹈天团</p>
				<video poster="imgs/3.jpg" src="images/33.mp4" data-ckin="minimal" data-overlay="1"></video>
			</li>
			<li class="demo-list__item">
				<p>街舞展示</p>
				<video poster="imgs/3.jpg" src="images/44.mp4" data-ckin="minimal" data-overlay="1"></video>
			</li>
			<li class="demo-list__item">
				<p>炫酷舞蹈</p>
				<video poster="imgs/3.jpg" src="images/22.mp4" data-ckin="minimal" data-overlay="1"></video>
			</li>
			<li class="demo-list__item">
				
				<h2 class="coming-soon">舞蹈视频播放</h2>
			</li>
		</ul>
	</div>
</section>

<script src="js/ckin.js"></script>


</body>
</html>
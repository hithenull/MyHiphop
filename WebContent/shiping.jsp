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
		<h2 class="title heading">Custom HTML5 Video Player with Ckins...</h2>
		
		
		<video poster="images/ckin.jpg" src="images/ckin.mp4" data-ckin="default" data-overlay="1" data-title="The curious case of Chameleon..."></video>
		
		
		<p class="tr">Demo video by
			<a href="https://vimeo.com/lumatic" target="_blank">Lumatic</a>
		</p>
		
	</div>
</section>

<section class="demo-section demo-section--light" id="skins">
	<div class="container">
		<h2 class="title heading">Skins</h2>
		<ul class="demo-list">
			<li class="demo-list__item">
				<p>Default Ckin without overlay</p>
				<video poster="images/ckin.jpg" src="images/ckin.mp4" data-ckin="default"></video>
			</li>
			<li class="demo-list__item">
				<p>Minimal Ckin with overlay</p>
				<video poster="images/ckin.jpg" src="images/ckin.mp4" data-ckin="minimal" data-overlay="1"></video>
			</li>
			<li class="demo-list__item">
				<p>Compact Ckin with overlay</p>
				<video poster="images/ckin.jpg" src="images/ckin.mp4" data-ckin="compact" data-overlay="2"></video>
			</li>
			<li class="demo-list__item">
				<p>Compact Ckin with custom color</p>
				<video poster="images/ckin.jpg" src="images/ckin.mp4" data-color="#fff000" data-ckin="compact" data-overlay="2"></video>
			</li>
			<li class="demo-list__item">
				<img src="images/logo.png" class="nav__logo" alt="Ckin">
				<h2 class="coming-soon">More ckins coming soon...</h2>
			</li>
		</ul>
	</div>
</section>

<script src="js/ckin.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>适用浏览器：360、FireFox、Chrome、Opera、傲游、搜狗、世界之窗. 不支持Safari、IE8及以下浏览器。</p>
<p>来源：<a href="http://www.lanrenzhijia.com/" target="_blank">懒人</a></p>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh"><head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>简约精美的HTML5在线视频播放器插件</title>

<!--可无视-->
<link rel="stylesheet" type="text/css" href="css/normalize.css">
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
		
		
		<div class="ckin__player default ckin__overlay"><video poster="imgs/ckin.jpg" src="imgs/ckin.mp4" data-ckin="default" data-overlay="1" data-title="The curious case of Chameleon..."></video><div class="default__title">The curious case of Chameleon...</div><button class="default__button--big toggle" title="Toggle Play"><i class="ckin-play"></i></button><div class="default__controls ckin__controls"><button class="default__button toggle" title="Toggle Video"><i class="ckin-play"></i></button><div class="progress"><div class="progress__filled"></div></div><button class="default__button volume" title="Volume"><i class="ckin-volume-medium"></i></button><button class="default__button fullscreen" title="Full Screen"><i class="ckin-expand"></i></button></div></div>
		
		
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
				<div class="ckin__player default"><video poster="imgs/ckin.jpg" src="imgs/ckin.mp4" data-ckin="default"></video><button class="default__button--big toggle" title="Toggle Play"><i class="ckin-play"></i></button><div class="default__controls ckin__controls"><button class="default__button toggle" title="Toggle Video"><i class="ckin-play"></i></button><div class="progress"><div class="progress__filled"></div></div><button class="default__button volume" title="Volume"><i class="ckin-volume-medium"></i></button><button class="default__button fullscreen" title="Full Screen"><i class="ckin-expand"></i></button></div></div>
			</li>
			<li class="demo-list__item">
				<p>Minimal Ckin with overlay</p>
				<div class="ckin__player minimal ckin__overlay"><video poster="imgs/ckin.jpg" src="imgs/ckin.mp4" data-ckin="minimal" data-overlay="1"></video><button class="minimal__button--big toggle" title="Toggle Play"><i class="ckin-play"></i></button><div class="minimal__controls ckin__controls"><button class="minimal__button toggle" title="Toggle Video"><i class="ckin-play"></i></button><div class="progress"><div class="progress__filled"></div></div><button class="minimal__button volume" title="Volume"><i class="ckin-volume-medium"></i></button><button class="minimal__button fullscreen" title="Full Screen"><i class="ckin-expand"></i></button></div></div>
			</li>
			<li class="demo-list__item">
				<p>Compact Ckin with overlay</p>
				<div class="ckin__player compact ckin__overlay--2"><video poster="imgs/ckin.jpg" src="imgs/ckin.mp4" data-ckin="compact" data-overlay="2"></video><button class="compact__button--big toggle" title="Toggle Play"><i class="ckin-play"></i></button><div class="compact__controls ckin__controls"><button class="compact__button toggle" title="Toggle Video"><i class="ckin-play"></i></button><div class="progress"><div class="progress__filled"></div></div><button class="compact__button volume" title="Volume"><i class="ckin-volume-medium"></i></button><button class="compact__button fullscreen" title="Full Screen"><i class="ckin-expand"></i></button></div></div>
			</li>
			<li class="demo-list__item">
				<p>Compact Ckin with custom color</p>
				<div class="ckin__player compact ckin__overlay--2"><video poster="imgs/ckin.jpg" src="imgs/ckin.mp4" data-color="#fff000" data-ckin="compact" data-overlay="2"></video><button class="compact__button--big toggle" title="Toggle Play" style="color: rgb(255, 240, 0);"><i class="ckin-play"></i></button><div class="compact__controls ckin__controls"><button class="compact__button toggle" title="Toggle Video" style="color: rgb(255, 240, 0);"><i class="ckin-play"></i></button><div class="progress"><div class="progress__filled" style="background: rgb(255, 240, 0);"></div></div><button class="compact__button volume" title="Volume" style="color: rgb(255, 240, 0);"><i class="ckin-volume-medium"></i></button><button class="compact__button fullscreen" title="Full Screen" style="color: rgb(255, 240, 0);"><i class="ckin-expand"></i></button></div></div>
			</li>
			<li class="demo-list__item">
				<img src="imgs/logo.png" class="nav__logo" alt="Ckin">
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

</body></html>
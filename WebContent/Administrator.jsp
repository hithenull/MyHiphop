<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>蚂蚁街舞工作室</title>

<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="stylesheet" type="text/css" href="font/iconfont.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<style type="text/css">
	iframe {
	margin:-75px 0px;
	float:right;
	width:85.5%;
	height:720px;
	border:none;
}
</style>
</head>
<body>

<div class="nav">
	<div class="nav-top">
		<div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png" ></div>
	</div>
	<ul>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>班级管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="addClass.jsp" target="iframe"><span>添加班级</span></a></li>
				<li><a href="addClass.jsp" target="iframe"><span>班级列表</span></a></li>
				<li><a href="addClass.jsp" target="iframe"><span>班级分类</span></a></li>
				<li><a href="addClass.jsp" target="iframe"><span>班级修改</span></a></li>
				
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>文章管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="xinwen.jsp" target="iframe"><span>新闻列表</span></a></li>
				<li><a href="xinwen.jsp" target="iframe"><span>新闻分类</span></a></li>
				<li><a href="xinwen.jsp" target="iframe"><span>添加新闻</span></a></li>
				<li><a href="xinwen.jsp" target="iframe"><span>新闻修改</span></a></li>
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>人员管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="personnel.jsp" target="iframe"><span>添加人员</span></a></li>
				<li><a href="personnel.jsp" target="iframe"><span>人员列表</span></a></li>
				<li><a href="personnel.jsp" target="iframe"><span>人员分类</span></a></li>
				<li><a href="personnel.jsp" target="iframe"><span>信息修改</span></a></li>
			</ul>
		</li>
	</ul>
</div>

<div style="text-align:center;margin:-650px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<iframe name="iframe">
	

</iframe>
</div>
</body>
</html>
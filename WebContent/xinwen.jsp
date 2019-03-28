<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>简单的js百叶窗图片轮播切换代码</title>

<link href="css/style1.css" rel="stylesheet" type="text/css"/>

<script src="js/imgSwitch.min.js" type="text/javascript"></script>	
<script type="text/javascript">
window.onload=function(){
	new imgSwitch("imgContainer",{Type:12,Width:543,Height:354,Pause:3000,Speed:"fast",Auto:true,Navigate:"numberic",NavigatePlace:"outer",PicturePosition:"left"})	
}
</script>		

</head>
<body>
<div id="imgContainer">
   <a href="#">
   
	<img src="imgs/1.jpg"/><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<em>宫斗戏小胖大战蒙面骑士</em>
	</a>
	<img src="imgs/2.jpg"/>
	<img src="imgs/3.jpg"/>
	<img src="imgs/4.jpg"/>
	<img src="imgs/3.jpg"/>
	<img src="imgs/2.jpg"/>
	<img src="imgs/1.jpg"/>`	
</div>

</body>
</html>	
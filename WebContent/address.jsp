<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>自动固定顶部的悬浮菜单栏代码</title>
<meta http-equiv="content-type" content="text/html;charset=gb2312">
<style type="text/css">
*{margin:0;padding:0;}
#float_banner{
				position:absolute;
				top:200px;
				border:2px solid red;width:500px;height:200px;
}
</style>
</head>
<body>
<div id="float_banner">这里是顶部的横幅，随着页面滚动而浮动</div>    
<div style="border:1px solid red;width:200px;height:2000px;">

</div>
<script language="javascript">
var speed = 100;
var scrollTop = null;
var hold = 0;
var pos = null;
var timer = null;
var moveHeight = null;
var float_banner = document.getElementById("float_banner");
window.onscroll=scroll_ad;
function scroll_ad(){
    scrollTop = document.documentElement.scrollTop+document.body.scrollTop;
    pos = scrollTop - float_banner.offsetTop;
    pos = pos/10
    moveHeight = pos>0?Math.ceil(pos):Math.floor(pos);
    if(moveHeight!=0){
        float_banner.style.top = float_banner.offsetTop+moveHeight+"px";
        setTimeout(scroll_ad,speed);
    }
//alert(scrollTop);
}
</script>
</body>
</html>
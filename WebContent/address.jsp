<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
<title>百度地图API自定义地图</title>

	<script>
	function coursePptChange(){
		  var MyTest = document.getElementById("pptPic").files[0];
		  var reader = new FileReader();
		  reader.readAsDataURL(MyTest);
		  reader.onload = function(theFile) {
		  var image = new Image();
		  image.src = theFile.target.result;
		  image.onload = function(){
		  if(this.width > 2208 || this.height >1242){
		  $.messager.alert("系统提示信息","ppt图片的最大宽度为 2208 像素，最大高度为 1242 像素！","info");
		   $("#pptPic").val("");
		  return false;
		 }
		 };
		 };
		}
	</script>
	
</head>

<body>
	<input type="file" id="editPptPic" name="pptPic" style="width:200px;" onchange="coursePptChange()"/>
</body>
</html>
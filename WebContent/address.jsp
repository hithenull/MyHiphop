<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
<title>百度地图API自定义地图</title>

	<script>
	function getImgURL(node) {

	    var imgURL = "";
	    try{
	        var file = null;
	        if(node.files && node.files[0] ){
	            file = node.files[0];
	        }else if(node.files && node.files.item(0)) {
	            file = node.files.item(0);
	        }
	        //Firefox 因安全性问题已无法直接通过input[file].value 获取完整的文件路径
	        try{
	            //Firefox7.0
	            imgURL =  file.getAsDataURL();
	            //alert("//Firefox7.0"+imgRUL);
	        }catch(e){
	            //Firefox8.0以上
	            imgURL = window.URL.createObjectURL(file);
	            //alert("//Firefox8.0以上"+imgRUL);
	        }
	    }catch(e){      //这里不知道怎么处理了，如果是遨游的话会报这个异常
	        //支持html5的浏览器,比如高版本的firefox、chrome、ie10
	        if (node.files && node.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function (e) {
	                imgURL = e.target.result;
	            };
	            reader.readAsDataURL(node.files[0]);
	        }
	    }
	    return imgURL;
	}
	
	function getPath(){
		var a = document.getElementById("aptitude");
		alert(getImgURL(a));
	}
	</script>
	
</head>

<body>
	<input type="file" id="aptitude" onchange="getPath()" />
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
<title>百度地图API自定义地图</title>
<!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
    .d4{
      width:1519px;
      height:750px;
    }
    .d3{
      width:1517px;
      height:200px;
      float:top;
    }
    .d1{
    width:552px;
    height:520px;
    float:right;
    }
    .d2{
    width:965px;
    height:520px;
    border:1px;
    float:left;
    text-align:center;
    font-size:20px;
 
    }
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>

<body>
  <!--百度地图容器-->
  <div class="d4">
  <div class="d3">
    <img src="imgs/5.jpg" width="1515px" height="198px"></img>
  </div>
  <div  id="dituContent" class="d1"></div>
  
  <div class="d2"><h2>江西制造职业技术学院</h2>
  地址:江西省南昌市紫阳大道318号</br></br>
  所在区域:江西&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   南昌</br></br>
  电话:0791-85278082
  <h2>交通指引:</h2>
江西制造职业技术学院附近的公交站:
昌东花园、昌东花园、江西现代学院、</br>制造学院、江西现代学院、长胜吴村、长胜龚村、艾溪村、艾溪湖一路东口、</br>省勘察院、艾溪湖大桥东。</br>

江西制造职业技术学院附近的公交车:
208路、220路、258路、110路、</br>高铁巴士3路、226路、803路等。</br>

打车去江西制造职业技术学院多少钱：
南昌市出租车的起步价是7.0元、</br>起步距离2.0公里、 每公里1.9元、无燃油附加费 ，请参考。
  </div>
  </div>
</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(482.238253,-42.914763);//定义一个中心点坐标
        map.centerAndZoom(point,1);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    
    initMap();//创建和初始化地图
</script>
</html>
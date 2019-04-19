<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>蚂蚁街舞工作室</title>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/style1.css">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootbox.min.js"></script>

</head>
<body>

<div class="box">
    <div class="title">班级管理页面</div>
    <div class="content">
        <!--搜索输入框及查询、重置按钮-->
        <div class="container content_width">
            <div class="person_search">
                <div class="search_input">
                    <div class="input-group mb-3">
                        <span>班级名称：</span>
                        <input id="Ktext" type="text" class="form-control" placeholder="请输入班级名称">
                    </div>
                </div>
                <div class="search_input">
                    <div class="input-group mb-3" hidden>
                        <span>班级序号：</span>
                        <input id="job_num" type="text" class="form-control" placeholder="请输入班级序号">
                    </div>
                </div>
                <div class="search_input">
                    <button class="btn btn-primary search_btn" type="button" id="search_btn">查询</button>
                    <button class="btn btn-primary search_btn" type="button" id="back_btn">重置</button>
                </div>
            </div>
            <div class="line"></div>
        </div>
        <!--添加按钮及bootstrap的模态框-->
        <div class="export">
            <button id="new_add" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#renyuan">
                <img src="img/add_two.png">
                <span>添加</span>
            </button>
            <div class="modal fade" id="renyuan">
                <div class="modal-dialog modal-lg modal_position">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">添加</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <table id="xztb" class="table">
                                <!--新修改弹窗的样式-->
                                <tbody>
                                <tr>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>班级名称</label>
                                    </td>
                                    <td><input class="className" type="text" placeholder="请输入班级名称"></td>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>班级序号</label>
                                    </td>
                                    <td><input class="jobNum" type="number" placeholder="请输入班级序号"></td>
                                </tr>
                                <tr>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>上课时长</label>
                                    </td>
                                    <td><input class="phoneNum" type="number" placeholder="请输入上课时长"></td>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>代课老师</label>
                                    </td>
                                    <td><input class="teacherName" type="text" placeholder="请输入老师名称"></td>
                                </tr>
                                <tr>
                                     <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>教学内容</label>
                                    </td>
                                    <td><input class="userName" type="text" placeholder="请输入教学内容"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                            <button id="add_btn" type="button" class="btn btn-secondary">确定</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--表格列表-->
        <table id="tb" class="table">
            <thead>
            <tr>
                <th>班级名称</th>
                <th>班级序号</th>
                <th>上课时长</th>
                <th>老师id</th>
                <th>教学内容</th>
                <th>操作</th>
            </tr>
            <c:forEach var="i" items="${requestScope.list}" varStatus="st">
            	<tr class="t_t">
                	<td style="background-color:pink;">${i.danceclassName }</td>
	                <td style="background-color:pink;">${i.danceclass_id }</td>
	                <td style="background-color:pink;">${i.classHour }</td>
	                <td style="background-color:pink;">${i.teacher_id }</td>
	                <td style="background-color:pink;">${i.content }</td>
	                <td style="background-color:pink;"><a href="#" class="edit">编辑</a> <a href="#"  class="del">删除</a></th>
	            </tr>
              </c:forEach>
            </thead>
            <tbody id="show_tbody">
            </tbody>
        </table>
        <div style="margin:0px 500px;width:100px;height:50px;border:0px solid red;">
	        <button class="tt">保存</button>&nbsp;&nbsp;&nbsp;<button id="nn" class="nn">复原</button>
        </div>
    </div>
</div>

<script type="text/javascript">
$(function () {
	
	$(".nn").click(function() {
		location.reload(false);
	})
	
	$(".tt").click(function() {
			var arr = "";
	        for (var i = 0; i<$('#show_tbody tr:not(".has_case")').length;i++) {
	            var par = '#show_tbody tr:not(".has_case"):eq(' + i + ')';
	            var a = $('td:eq(0)', par).html().trim();
	            var b = $('td:eq(1)', par).html().trim();
	            var c = $('td:eq(2)', par).html().trim();
	            var d = $('td:eq(3)', par).html().trim();
	            var e = $('td:eq(4)', par).html().trim();
	            toul = a+","+b+","+c+","+d+","+e+",";
	            arr += toul;
	        }
	        if(toul!=""){
	        	alert(toul);
		        window.location.href="admin_addDClass?toul="+arr;
	        }
	})
	
	$('.edit').click(function() {
	    	if($('#show_tbody tr:not(".has_case")').length!=0){
	    		alert("请先保存");
	    		return;
	    	}
	    	trIndex = $('.edit', '.t_t').index($(this));
	    	trIndex = trIndex+1;
	        addEnter = false;
	        $(this).parents('tr').addClass('has_case');
	        var nowConArr = [];
	        for (var i=0; i<document .getElementById ("tb").rows [trIndex].cells.length-1;i++) {
	            var a = document .getElementById ("tb").rows [trIndex].cells[i].innerHTML;
	            nowConArr.push(a);
	        }
	        $('#renyuan').modal('show');
	        for (var j=0;j<tarInp.length;j++) {
	            tarInp.eq(j).val(nowConArr[j]);
	        }
	        tarInp.eq(1).attr("readonly","readonly");
	        $("#add_btn").click(function() {
	        	methods.setStr2();
	        })
	    })
	
    $('#add_btn').click(function () {
        methods.addHandle()
    })

    $('#show_tbody').on('click','.edit', function () {
        trIndex = $('.edit', '#show_tbody').index($(this));
        addEnter = false;
        $(this).parents('tr').addClass('has_case');
        methods.editHandle(trIndex);
    })

    $('#search_btn').click(function () {
        methods.seachName();
    })

    $('#back_btn').click(function () {
        $('#Ktext').val(' ');
        methods.resectList();
    })

    $('.del').click(function () {
        $(this).parents('tr').remove();
    })

    $('#renyuan').on('hide.bs.modal',function() {
        addEnter = true;
        $('#show_tbody tr').removeClass('has_case');
        $('#xztb input').val(' ');
        $('#xztb select').find('option:first').prop('selected', true)
    });
    
    var list;
	list = <%=request.getAttribute("list")%>;
	if(list==null){	
		window.location.href="admin_getAllClass";
	}

})

var csc="",
	addEnter = true,
    noRepeat = true,
    classArr = [],
    jobArr = [],
    teacherArr = [],
    tdStr = '',
    trIndex,
    hasNullMes = false,
    tarInp = $('#xztb input'),
    tarSel = $('#xztb select');

var methods = {

    addHandle: function (the_index) {
        hasNullMes = false;
        methods.checkMustMes();
        if (hasNullMes) {
            return;
        }
        if (addEnter) {
            methods.checkRepeat();
            if (noRepeat) {
                methods.setStr();
                $('#show_tbody').append('<tr>' + tdStr + '</tr>');
                $('#renyuan').modal('hide');
            }
        }else{
            methods.setStr();
            $('#show_tbody tr').eq(trIndex).empty().append(tdStr);
            $('#renyuan').modal('hide');
        }
    },
    editHandle: function (the_index) {

        var tar = $('#show_tbody tr').eq(the_index);
        var nowConArr = [];
        for (var i=0; i<tar.find('td').length-1;i++) {
            var a = tar.children('td').eq(i).html();
            nowConArr.push(a);
        }

        $('#renyuan').modal('show');

        for (var j=0;j<tarInp.length;j++) {
            tarInp.eq(j).val(nowConArr[j])
        }
        for (var p=0;p<tarSel.length;p++) {
            var the_p = p+tarInp.length;
            tarSel.eq(p).val(nowConArr[the_p]);
        }

    },
    
    setStr2 : function(){
		if(csc!=""){
			window.location.href="admin_updateClass?toul="+csc;
		}
	},
    
    setStr: function () {

        tdStr = '';
        csc = tarInp.eq(0).val()+","+tarInp.eq(1).val()+","+tarInp.eq(2).val()+","+tarInp.eq(3).val()+","+tarInp.eq(4).val()+",";
        for (var a=0; a<tarInp.length; a++) {
            tdStr+= '<td>' + tarInp.eq(a).val() + '</td>'
        }
        for (var b=0; b<tarSel.length; b++) {
            tdStr+= '<td>' + tarSel.eq(b).val() + '</td>'
        }
        tdStr+= '<td><a href="#" class="edit">编辑</a></td>';

    },
    seachName: function () {

        var a = $('#show_tbody tr');
        var nameVal = $('#Ktext').val().trim();
        var nameStr = '',
            nameArr = [];

        if (nameVal==='') {
            bootbox.alert({
                title: "来自火星的提示",
                message: "搜索内容不能为空",
                closeButton:false
            })
            return;
        }

        for (var c=0;c<a.length;c++) {
            var txt = $('td:first', a.eq(c)).html().trim();
            nameArr.push(txt);
        }

        a.hide();
        for (var i=0;i<nameArr.length;i++) {
            if (nameArr[i].indexOf(nameVal)>-1) {
                a.eq(i).show();
            }
        }
    },
    resectList: function () {
        $('#show_tbody tr').show();
    },
    checkMustMes: function () {
        if ($('.className').val().trim()==='') {
            bootbox.alert({
                title: "来自火星的提示",
                message: "必填项不能为空，请填写",
                closeButton:false
            })
            hasNullMes = true;
            return
        }
        if ($('.jobNum').val().trim()==='') {
            bootbox.alert({
                title: "来自火星的提示",
                message: "必填项不能为空，请填写",
                closeButton:false
            })
            hasNullMes = true;
            return
        }
        if ($('.teacherName').val().trim()==='') {
            bootbox.alert({
                title: "来自火星的提示",
                message: "必填项不能为空，请填写",
                closeButton:false
            })
            hasNullMes = true;
            return
        }
        if ($('.phoneNum').val().trim()==='') {
            bootbox.alert({
                title: "来自火星的提示",
                message: "必填项不能为空，请填写",
                closeButton:false
            })
            hasNullMes = true;
            return
        }
        if ($('.userName').val().trim()==='') {
            bootbox.alert({
                title: "来自火星的提示",
                message: "必填项不能为空，请填写",
                closeButton:false
            })
            hasNullMes = true;
            return
        }

    },
    checkRepeat: function () {
        classArr = [], jobArr = [], teacherArr = [];
        
        for (var i = 0; i<$('.t_t').length;i++) {
            var a =  document .getElementById ("tb").rows [i].cells[0].innerHTML;
            var b =  document .getElementById ("tb").rows [i].cells[1].innerHTML;
            var c =  document .getElementById ("tb").rows [i].cells[3].innerHTML;
            classArr.push(a);
            jobArr.push(b);
            teacherArr.push(c);
        }
        for (var i = 0; i<$('#show_tbody tr:not(".has_case")').length;i++) {
            var par = '#show_tbody tr:not(".has_case"):eq(' + i + ')';
            var a = $('td:eq(0)', par).html().trim(),
                b = $('td:eq(1)', par).html().trim();
                c = $('td:eq(3)', par).html().trim();
            classArr.push(a);
            jobArr.push(b);
            teacherArr.push(c);
        }
        var classNum = $('.className').val().trim(),
            jobNum = $('.jobNum').val().trim();
            teacherNum = $('.teacherName').val().trim();

        if (jobArr.indexOf(jobNum)>-1) {
            noRepeat = false;
            bootbox.alert({
                title: "来自火星的提示",
                message: "序号重复，请重新输入",
                closeButton:false
            })
            return;
        }
        if (classArr.indexOf(classNum)>-1) {
            noRepeat = false;
            bootbox.alert({
                title: "来自火星的提示",
                message: "班级名称重复了，请重新输入",
                closeButton:false
            })
            return;
        }
        if (teacherArr.indexOf(teacherNum)>-1) {
            noRepeat = false;
            bootbox.alert({
                title: "来自火星的提示",
                message: "教学老师重复了，请重新输入",
                closeButton:false
            })
            return;
        }
        noRepeat = true;
    }
}
</script>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>
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
<script type="text/javascript">
	window.onload = function(){
		
	}
</script>
</head>
<body>

<div class="box">
    <div class="title">人员管理页面</div>
    <div class="content">
        <!--搜索输入框及查询、重置按钮-->
        <div class="container content_width">
            <div class="person_search">
                <div class="search_input">
                    <div class="input-group mb-3">
                        <span>姓名：</span>
                        <input id="Ktext" type="text" class="form-control" placeholder="请输入姓名">
                    </div>
                </div>
                <div class="search_input">
                    <div class="input-group mb-3" hidden>
                        <span>学号：</span>
                        <input id="job_num" type="text" class="form-control" placeholder="请输入学号">
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
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>姓名</label>
                                    </td>
                                    <td><input class="userName" type="text" placeholder="请输入姓名"></td>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>学号</label>
                                    </td>
                                    <td><input class="jobNum" type="number" placeholder="请输入学号"></td>
                                </tr>
                                <tr>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>手机号</label>
                                    </td>
                                    <td><input class="phoneNum" type="number" placeholder="请输入手机号"></td>
                                    <td class="tb_bg"><label for="">职业</label></td>
                                    <td><input type="text" placeholder="请输入申请职业"></td>
                                </tr>
                                <tr>
                                    <td class="tb_bg"><label for="">性别</label></td>
                                    <td>
                                        <select class="form-control select_down" style="font-size: 13px; color: #666;">
                                            <option>男</option>
                                            <option>女</option>
                                            
                                        </select>
                                    </td>
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
                <th>姓名</th>
                <th>序号</th>
                <th>手机号</th>
                <th>性别</th>
                <th>职业</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="show_tbody">
            	<c:forEach var="i" items="${requestScope.list}" varStatus="st">
                	<tr class="t_t">
	                	<td style="background-color:pink;">${i.username }</td>
		                <td style="background-color:pink;">${i.user_id }</td>
		                <td style="background-color:pink;">${i.userphone }</td>
		                <td style="background-color:pink;">${i.usersex }</td>
		                <td style="background-color:pink;">${i.jobapplication }</td>
		                <td style="background-color:pink;"><a href="#" class="edit">通过</a> <a href="#"  class="del">删除</a></th>
	           		 </tr>
              	</c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script type="text/javascript">
$(function () {
	

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
		window.location.href="public_getAllUser";
	}

})

var addEnter = true,
    noRepeat = true,
    jobArr = [],
    phoneArr = [],
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
    setStr: function () {

        tdStr = '';
        for (var a=0; a<tarInp.length; a++) {
            tdStr+= '<td>' + tarInp.eq(a).val() + '</td>'
        }
        for (var b=0; b<tarSel.length; b++) {
            tdStr+= '<td>' + tarSel.eq(b).val() + '</td>'
        }
        tdStr+= '<td><a href="#" class="edit">编辑</a> <a href="#" class="del">删除</a></td>';

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

        if ($('.userName').val().trim()==='') {
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
        if ($('.phoneNum').val().trim()==='') {
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

        jobArr = [], phoneArr = [];

        for (var i = 0; i<$('#show_tbody tr:not(".has_case")').length;i++) {
            var par = '#show_tbody tr:not(".has_case"):eq(' + i + ')';
            var a = $('td:eq(1)', par).html().trim(),
                b = $('td:eq(2)', par).html().trim();
            jobArr.push(a);
            phoneArr.push(b);
        }
        var jobNum = $('.jobNum').val().trim(),
            phoneNum = $('.phoneNum').val().trim();

        if (jobArr.indexOf(jobNum)>-1) {
            noRepeat = false;
            bootbox.alert({
                title: "来自火星的提示",
                message: "序号重复，请重新输入",
                closeButton:false
            })
            return;
        }
        if (phoneArr.indexOf(phoneNum)>-1) {
            noRepeat = false;
            bootbox.alert({
                title: "来自火星的提示",
                message: "手机号码重复了，请重新输入",
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
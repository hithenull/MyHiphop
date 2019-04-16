<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                        <input id="danceclassName" type="text" class="form-control" placeholder="请输入班级名称">
                    </div>
                </div>
                <div class="search_input">
                    <div class="input-group mb-3" hidden>
                        <span>班级序号：</span>
                        <input id="danceclass_id" type="text" class="form-control" placeholder="请输入班级序号">
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
                                    <td><input class="danceclassName" type="text" placeholder="请输入班级名称"></td>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>班级序号</label>
                                    </td>
                                    <td><input class="danceclass_id" type="number" placeholder="请输入班级序号"></td>
                                </tr>
                                <tr>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>上课时长</label>
                                    </td>
                                    <td><input class="classHour" type="number" placeholder="请输入上课时长"></td>
                                    <td class="tb_bg"><label for="">班级名称</label></td>
                                    <td><input type="text" placeholder="请输入班级名称"></td>
                                </tr>
                                <tr>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>代课老师</label>
                                    </td>
                                    <td><input class="teacherName" type="text" placeholder="请输入老师名称"></td>
                            
                                     <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>教学内容</label>
                                    </td>
                                    <td><input class="content" type="text" placeholder="请输入教学内容"></td>
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
                <th>班级名称</th>
                <th>代课老师</th>
                <th>教学内容</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="show_tbody">
           
            </tbody>
        </table>
    </div>
</div>

<script src="js/mejs.js"></script>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>
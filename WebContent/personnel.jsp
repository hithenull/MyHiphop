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
    <div class="title">人员管理页面</div>
    <div class="content">
        <!--搜索输入框及查询、重置按钮-->
        <div class="container content_width">
            <div class="person_search">
                <div class="search_input">
                    <div class="input-group mb-3">
                        <span>姓名：</span>
                        <input id="username" type="text" class="form-control" placeholder="请输入姓名">
                    </div>
                </div>
                <div class="search_input">
                    <div class="input-group mb-3" hidden>
                        <span>学号：</span>
                        <input id="user_id" type="text" class="form-control" placeholder="请输入学号">
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
                                    <td><input class="username" type="text" placeholder="请输入姓名"></td>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>学号</label>
                                    </td>
                                    <td><input class="user_id" type="number" placeholder="请输入学号"></td>
                                </tr>
                                <tr>
                                    <td class="tb_bg"><label for=""><font style="font-size: 14px; color: red;">*</font>手机号</label>
                                    </td>
                                    <td><input class="phone" type="number" placeholder="请输入手机号"></td>
                                    <td class="tb_bg"><label for="">班级名称</label></td>
                                    <td><input type="text" placeholder="请输入班级名称"></td>
                                </tr>
                                <tr>
                                    <td class="tb_bg"><label for="">性别</label></td>
                                    <td>
                                        <select class="form-control select_down" style="font-size: 13px; color: #666;">
                                            <option>男</option>
                                            <option>女</option>
                                            
                                        </select>
                                    </td>
                                    <td class="tb_bg"><label for="">职业</label></td>
                                    <td>
                                        <select class="form-control select_down" style="font-size: 13px; color: #666;">
                                            <option>学生</option>
                                            <option>老师</option>
                                            <option>管理员</option>
                                            
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
                <th>学号</th>
                <th>手机号</th>
                <th>班级名称</th>
                <th>性别</th>
                <th>职业</th>
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
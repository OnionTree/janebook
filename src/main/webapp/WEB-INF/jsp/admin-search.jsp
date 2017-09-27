<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>《捡书大本营》</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <link rel="stylesheet" href="./layui/css/iconfont.css">
    <script src="./layui/layui.js"></script>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <style>
    body {
        font-family: "Microsoft YaHei";
    }

    .add {
        font-size: 45px;
        width: 50px;
        height: 50px;
        line-height: 53px;
        text-align: center;
        position: fixed;
        right: 45px;
        bottom: 45px;
        background: #1E9FFF;
        color: #eee;
        z-index: 99999;
        border-radius: 50%;
    }

    .add:hover {
        background: #009688;
    }
    </style>
</head>

<body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <div class="layui-logo" style="font-size: 28px;">《捡书大本营》</div>
            <!-- 头部区域（可配合layui已有的水平导航） -->
            <ul class="layui-nav layui-layout-left">
                <h1 style="line-height: 70px;">我们不创造文章，我们只是文章的搬运工~</h1>
            </ul>
            <ul class="layui-nav layui-layout-right">
                <li class="layui-nav-item">
                    <a href="javascript:;">
          <img src="./pic/timg.jpg" class="layui-nav-img">
          叫我管理猿！
        </a>
                    <dl class="layui-nav-child">
                        <dd><a href="">基本资料</a></dd>
                        <dd><a href="">安全设置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">退了</a></li>
            </ul>
        </div>
        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-filter="test">
                    <li class="layui-nav-item"><a href="admin-main">首页推荐</a></li>
                    <li class="layui-nav-item"><a href="admin-user">用户管理</a></li>
                    <li class="layui-nav-item"><a href="admin-article">文章管理</a></li>
                    <li class="layui-nav-item"><a href="admin-classify">专题管理</a></li>
                    <li class="layui-nav-item"><a href="admin-main">评论管理</a></li>
                    <li class="layui-nav-item layui-this"><a href="admin-search">热搜关键字</a></li>
                </ul>
            </div>
        </div>
        <div class="layui-body">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                <legend>分类管理</legend>
            </fieldset>
            <div class="layui-form-item">
                <div class="layui-input-block" style="  margin: auto 30px;">
                    <input id="search-cont" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" style="display:inline-block;width:74%; vertical-align:middle;">
                    <button id="search" class="layui-btn layui-btn-normal btn-group" style="display:inline-block; width:24%; margin-left:10px; vertical-align:middle;">按名称搜索</button>
                </div>
            </div>
            <div style="padding: 20px;">
                <table class="layui-hide" id="LAY_table_user" lay-filter="classify"></table>
            </div>
            <i id="add-classify" class="iconfont icon-jiahao add"></i>
            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-mini rec" lay-event="edit">编辑</a>
                <a class="layui-btn layui-btn-mini layui-btn-danger" lay-event="del">删除</a>
            </script>
            <div class="layui-footer">
                <blockquote class="layui-elem-quote">管理搜索关键字。</blockquote>
            </div>
        </div>
        <div id="pop-cont" style="position: absolute; z-index: 99999; width:100%; height: 100%; background: #eee; display: none;  ">
            <div id="add-classify-box">
                <form class="layui-form" action="" style="margin-top: 10px;">
                    <div class="layui-form-item" style="display: none;">
                        <label class="layui-form-label">关键字</label>
                        <div class="layui-input-block">
                            <input id="search-id" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="id" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">关键字</label>
                        <div class="layui-input-block">
                            <input id="search-name" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="填入热搜关键字" class="layui-input">
                        </div>
                    </div>
                </form>
                <form class="layui-form" action="" style="margin-top: 10px;">
                    <div class="layui-form-item">
                        <label class="layui-form-label">点击量</label>
                        <div class="layui-input-block">
                            <input id="search-click" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="一键帮你上热搜！！" class="layui-input">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    var text = null;

    text = $("#pop-cont").html();
    $("#pop-cont").html('');

    var imgPath = null;
    layui.use(['form', 'upload', 'table', 'element'], function() { //独立版的layer无需执行这一句
        var $ = layui.jquery;
        var layer = layui.layer; //独立版的layer无需执行这一句
        var table = layui.table;
        var form = layui.form;
        var upload = layui.upload;

        var active = {
            offset: function(data) {
                layer.open({
                    title: "- -|||",
                    type: 1,
                    offset: 'type',
                    id: 'add-box',
                    content: '<div style="padding:20px; padding-right:90px;">' + text + '</div>',
                    btn: ['确定'],
                    btnAlign: 'c',
                    closeBtn: 2,
                    shade: 0.7,
                    //area: ['50%', '80%'],
                    yes: function() {
                        var name = $("#search-name").val();
                        var click = $("#search-click").val();

                        $.ajax({
                            type: 'POST',
                            url: 'http://localhost/janebook/search',
                            contentType: 'application/json',
                            data: JSON.stringify({
                                searchName: name,
                                click: click
                            }),
                            success: function(msg) {

                                layer.msg(msg);
                                layer.close(layer.index - 1);
                                tableLoad('0/0');
                            }

                        })
                    }
                });
            },
            offset2: function(data) {
                layer.open({
                    title: "- -|||",
                    type: 1,
                    offset: 'type',
                    id: 'edit-box',
                    content: '<div style="padding:20px; padding-right:90px;">' + text + '</div>',
                    btn: ['确定'],
                    btnAlign: 'c',
                    closeBtn: 2,
                    shade: 0.7,
                    //area: ['50%', '80%'],
                    yes: function() {
                        var name = $("#search-name").val();
                        var click = $("#search-click").val();
                        $.ajax({
                            type: 'PUT',
                            url: 'http://localhost/janebook/search',
                            contentType: 'application/json',
                            data: JSON.stringify({
                                id: data.id,
                                searchName: name,
                                click: click
                            }),
                            success: function(msg) {
                                layer.msg(msg);
                                layer.close(layer.index - 1);
                                tableLoad('0/0');
                            }

                        })
                    }
                });
            }
        }



        table.on('tool(classify)', function(obj) {
            if (obj.event === 'edit') {
                var data = obj.data;
                active['offset2'].call(this, data);
                $("#search-name").val(data.searchName);
                $("#search-click").val(data.click);
                form.render();
            } else if (obj.event === 'del') {
                var id = obj.data.id;

                $.ajax({
                    type:"DELETE",
                    url:"http://localhost/janebook/search/"+id,
                    success:function(msg){
                        layer.msg(msg);
                        obj.del();
                    },
                    error:function(){
                        layer.msg("出现服务器未知错误");
                    }
                })
                
            }
        });


        $("#search").click(function() {
            var searchCont = $("#search-cont").val();
            if (searchCont === "") {
                tableLoad('0/0');
            } else {
                tableLoad(searchCont);
            }
        })

        $("#add-classify").click(function() {
            active['offset'].call(this, '');
            form.render();
            
        })


        tableLoad('0/0');

        function tableLoad(parm) {

            //方法级渲染
            table.render({
                elem: '#LAY_table_user',
                url: 'http://localhost/janebook/searchs/' + parm,
                cols: [
                    [
                        { field: 'id', title: 'ID', width: 80, sort: true, fixed: true }, { field: 'searchName', title: '关键字', sort: true, width: 600 }, { field: 'click', title: '点击量', sort: true, width: 900 }, { fixed: 'right', title: '你要搞事!?', width: 200, align: 'center', toolbar: '#barDemo' }
                    ]
                ],
                id: 'testReload',
                page: true

            });
        }



    });
    </script>
</body>

</html>
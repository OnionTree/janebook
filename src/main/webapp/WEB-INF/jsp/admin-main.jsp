<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>《捡书大本营》</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
    <script src="./layui/layui.js"></script>
    <style>
    body {
        font-family: "Microsoft YaHei";
    }

    .pic-box {
        float: left;
        margin: 10px;
        padding: 3px;
        border: 2px solid #eee;
    }

    .img {
        width: 500px;
        height: auto;
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
                    <li class="layui-nav-item layui-this"><a href="admin-main">首页推荐</a></li>
                    <li class="layui-nav-item"><a href="admin-user">用户管理</a></li>
                    <li class="layui-nav-item"><a href="admin-article">文章管理</a></li>
                    <li class="layui-nav-item"><a href="admin-classify">专题管理</a></li>
                    <li class="layui-nav-item"><a href="admin-main">评论管理</a></li>
                    <li class="layui-nav-item"><a href="admin-search">热搜关键字</a></li>
                </ul>
            </div>
        </div>
        <div class="layui-body">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                <legend>首页推荐</legend>
            </fieldset>
            <div class="pic-box">
                <img class="img" src="./pic/1.jpg" />
                <p style="text-align: center;">推荐图片1</p>
            </div>
            <div class="pic-box">
                <img class="img" src="./pic/2.jpg" />
                <p style="text-align: center;">推荐图片2</p>
            </div>
            <div class="pic-box">
                <img class="img" src="./pic/3.jpg" />
                <p style="text-align: center;">推荐图片3</p>
            </div>
            <div class="pic-box">
                <img class="img" src="./pic/4.jpg" />
                <p style="text-align: center;">推荐图片4</p>
            </div>
            <div class="pic-box">
                <img class="img" src="./pic/5.jpg" />
                <p style="text-align: center;">广告图片1</p>
            </div>
            <div class="pic-box">
                <img class="img" src="./pic/6.jpg" />
                <p style="text-align: center;">广告图片2</p>
            </div>
            <div class="layui-footer">
                <blockquote class="layui-elem-quote">点击图片修改。</blockquote>
            </div>
        </div>
        <div id="pop-cont" style="position: absolute; z-index: 99999; width:100%; height: 100%; background: #eee; display:none">
            <div class="layui-form-item">
                <div class="layui-input-block" style="  margin: auto 30px;">
                    <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" style="display:inline-block;width:74%; vertical-align:middle;">
                    <button class="layui-btn layui-btn-normal btn-group" style="display:inline-block; width:24%; margin-left:10px; vertical-align:middle;">按名称搜索</button>
                </div>
            </div>
            <div style="width:93%; height: 100%; margin:auto;">
                <!--  <table class="layui-table" lay-data="{ url:'http://localhost/janebook/articles/0/0/', page:true, id:'idTest'}" lay-filter="demo">
                <thead>
                  <tr>
                    <th lay-data="{field:'id', width:50, sort: true, fixed: true}">ID</th>
                    <th lay-data="{field:'title', width:850}">文章名称</th>
                    <th lay-data="{field:'authorName', width:100}">作者名字</th>
                    <th lay-data="{fixed: 'right', width:200, align:'center', toolbar: '#barDemo'}"></th>
                  </tr>
                </thead>
              </table> -->
                <script type="text/html" id="barDemo">
                    <a class="layui-btn layui-btn-mini rec" lay-event="rec">设为推荐</a>
                    <a class="layui-btn layui-btn-mini" lay-event="view">预览文章</a>
                </script>
                <script>
                </script>
            </div>
        </div>
    </div>
    <script>

        $.ajax({
            type:"GET",
            url:
        })

    var picIndex = null;
    layui.use(['layer', 'element'], function() { //独立版的layer无需执行这一句
        var $ = layui.jquery,
            layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            offset: function(othis) {
                var type = 'auto',
                    text = '<div class="layui-form-item">\
                                <div class="layui-input-block" style="  margin: auto 30px;">\
                                    <input id="search-cont" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" style="display:inline-block;width:74%; vertical-align:middle;">\
                                    <button id="search" class="layui-btn layui-btn-normal btn-group" style="display:inline-block; width:24%; margin-left:10px; vertical-align:middle;">按名称搜索</button>\
                                </div>\
                              </div>\
                              <table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>';
                layer.open({
                    title: "修改图片",
                    type: 1,
                    offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                        ,
                    id: 'rec-img' + type //防止重复弹出
                        ,
                    content: '<div style="padding: 20px 20px;">' + text + '</div>',
                    btn: '确定修改',
                    btnAlign: 'c' //按钮居中
                        ,
                    shade: 0.7 //不显示遮罩
                        ,
                    area: ['70%', '60%'],
                    yes: function() {
                        layer.closeAll();
                    }
                });
            },
            notice: function(data) {

                //layer.msg(JSON.stringify(data));

                //示范一个公告层
                layer.open({
                    type: 1,
                    title: false //不显示标题栏
                        ,
                    closeBtn: false,
                    area: ['70%', '60%'],
                    shade: 0,
                    id: 'LAY_layuipro' //设定一个id，防止重复弹出
                        ,
                    btn: ['结束预览'],
                    moveType: 1 //拖拽模式，0或者1
                        ,
                    content: '<div style="width:100%; height:100%; background:#393D49; color: #fff;"><div style="padding:20px;">' + JSON.stringify(data.content) + '</div></div>',
                    success: function(layero) {
                        var btn = layero.find('.layui-layer-btn');
                        btn.css('text-align', 'center');
                        btn.find('.layui-layer-btn0').attr({
                            //href: 'http://www.layui.com/'
                            //,target: '_blank'
                        });
                    }
                });
            }
        };

        $('.pic-box').on('click', function() {
            picIndex = $(this).index();
            var othis = $(this),
                method = 'offset';
            active[method].call(this, othis);
            tableLoad('0/0');
            $("#search").click(function() {
                var searchCont = $("#search-cont").val();
                if (searchCont === "") {
                    tableLoad('0/0');
                } else {
                    tableLoad(searchCont);
                }
            })
        });

        function tableLoad(parm) {
            layui.use('table', function() {
                var table = layui.table;

                //方法级渲染
                table.render({
                    elem: '#LAY_table_user',
                    url: 'http://localhost/janebook/articles/' + parm,
                    cols: [
                        [
                            { field: 'id', title: 'ID', width: 80, sort: true, fixed: true }, { field: 'title', title: 'Title', width: 800 }, { field: 'authorName', title: 'Author', width: 100 }, { fixed: 'right', width: 200, align: 'center', toolbar: '#barDemo' }
                        ]
                    ],
                    id: 'testReload',
                    page: true

                });

                table.on('tool(user)', function(obj) {
                    if (obj.event === 'rec') {
                        var btn = $(this);
                        if (btn.html() === '设为推荐') {
                            var data = obj.data;
                            //layer.msg(picIndex+'  '+JSON.stringify(data));
                            btnClass = btn.attr('class');
                            $(".rec").html("设为推荐");
                            btn.html("已推荐");
                            changeImg(picIndex, data.id);
                        } else {
                            btn.html("设为推荐");
                        }

                    } else if (obj.event === 'view') {
                        var data = obj.data;

                        active['notice'].call(this, data);
                    }
                });
            });
        }

        function changeImg(index, articleId) {
            $.ajax({
                type: "PUT",
                url: 'http://localhost/janebook/rec',
                contentType: 'application/json',
                data: JSON.stringify({
                    id: index,
                    articleId: articleId
                }),
                success: function(msg) {
                    layer.msg(msg);
                }
            })
        }

    });
    </script>
</body>

</html>
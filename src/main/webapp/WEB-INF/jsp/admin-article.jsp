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
                    <li class="layui-nav-item layui-this"><a href="admin-article">文章管理</a></li>
                    <li class="layui-nav-item"><a href="admin-classify">专题管理</a></li>
                    <li class="layui-nav-item"><a href="admin-main">评论管理</a></li>
                    <li class="layui-nav-item"><a href="admin-search">热搜关键字</a></li>
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
            <!-- <i id="add-classify" class="iconfont icon-jiahao add"></i> -->
            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-mini rec" lay-event="edit">详细</a>
                <a class="layui-btn layui-btn-mini layui-btn-danger" lay-event="del">删除</a>
            </script>
            <div class="layui-footer">
                <blockquote class="layui-elem-quote">管理文章。</blockquote>
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

        //触发事件
        var active = {
            notice: function(data) {

                //layer.msg(JSON.stringify(data));

                //示范一个公告层
                layer.open({
                    type: 1,
                    title: ['文章预览'] //不显示标题栏
                        ,
                    btnAlign: 'c', //按钮居中
                    closeBtn: 1,
                    area: ['100%', '100%'],
                    shade: 0.7,
                    id: 'edit-box' //设定一个id，防止重复弹出
                        ,
                    btn: ['确认修改'],
                    moveType: 1 //拖拽模式，0或者1
                        ,
                    content: '<div style="padding:20px; margin：auto;">' +  '这理由文章！</div>',
                    yes: function() {
                        layer.msg($("#classify-send").prop('checked'));
                    }
                });
            }
        };

        table.on('tool(classify)', function(obj) {
            if (obj.event === 'edit') {
                var data = obj.data;
                active['notice'].call(this, data);

                if (data.avatar != null)
                    $("#user-img").attr('src', data.avator);
                $("#username").html(data.userId);
                $("#nickname").html(data.nickname);
                $("#sex").html(data.sex);
                $("#phone").html(data.phone);
                $("#info").html(data.info);
                if (data.isRec == '1') $("#user-rec").attr('checked', true);
                form.render();
                popContMake();
            } else if (obj.event === 'del') {
                var id = obj.data.id;
                $.ajax({
                  type:"DELETE",
                  url:"http://localhost/janebook/article/"+id,
                  success:function(msg){
                    layer.msg(msg);
                    obj.del();                    
                  },
                  error:function(){
                    layer.msg("服务器未知错误");
                  }
                })
            }
        });


        //自定义验证规则
        form.verify({
            title: function(value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            content: function(value) {
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        // form.on('switch(switchTest)', function(data) {
        //     layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
        //         offset: '6px'
        //     });
        //     layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        // });

        //监听提交
        // form.on('submit(demo1)', function(data) {
        //     layer.alert(JSON.stringify(data.field), {
        //         title: '最终的提交信息'
        //     })
        //     return false;
        // });

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
            popContMake();

        })


        tableLoad('0/0');

        function tableLoad(parm) {

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
        }



        function popContMake() {

            //普通图片上传
            var uploadInst = upload.render({
                elem: '#test1',
                url: '/upload/',
                before: function(obj) {
                    //预读本地文件示例，不支持ie8
                    obj.preview(function(index, file, result) {
                        $('#demo1').attr('src', result); //图片链接（base64）
                    });
                },
                done: function(res) {
                    //如果上传失败
                    if (res.code > 0) {
                        return layer.msg('上传失败');
                    }
                    imgPath = res;
                    //上传成功
                },
                error: function() {
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function() {
                        uploadInst.upload();
                    });
                }
            })

        }


    });
    </script>
</body>

</html>
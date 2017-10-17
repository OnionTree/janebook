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
    @keyframes addhover
    {
        0% {background: #1E9FFF; opacity: 1}
        50% {background: #009688; opacity: 0.5}
        100% {background: #1E9FFF; opacity: 1}
    }


    @-webkit-keyframes addhover
    {
        0% {background: #1E9FFF; opacity: 1}
        50% {background: #009688; opacity: 0.5}
        100% {background: #1E9FFF; opacity: 1}
    }

    .add:hover {
        animation:addhover 1.5s infinite;
        -webkit-animation:addhover 1.5s infinite;

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
                    <li class="layui-nav-item layui-this"><a href="admin-classify">专题管理</a></li>
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
            <i id="add-classify" class="iconfont icon-jiahao add"></i>
            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-mini rec" lay-event="edit">编辑</a>
                <a class="layui-btn layui-btn-mini layui-btn-danger" lay-event="del">删除</a>
            </script>
            <div class="layui-footer">
                <blockquote class="layui-elem-quote">管理文章分类。</blockquote>
            </div>
        </div>
        <div id="pop-cont" style="position: absolute; z-index: 99999; width:100%; height: 100%; background: #eee; display: none;  ">
            <div id="add-classify-box">
                <div class="layui-upload" style="height: 160px; width: 91px; margin: 25px auto;">
                    <div class="layui-upload-list">
                        <img id="classify-img" class="layui-upload-img" id="classify-img" style="height: 91px; width: 91px; border: 2px solid #eee; border-radius: 50%" src="./pic/timg.jpg" />
                        <p id="demoText"></p>
                    </div>
                    <button type="button" class="layui-btn" id="test1" style="margin-left: 2px;">上传封面</button>
                </div>
                <form class="layui-form" action="" style="margin-top: 10px;">
                    <div class="layui-form-item">
                        <label class="layui-form-label">专题名称</label>
                        <div class="layui-input-block">
                            <input id="classify-title" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="你的专题叫什么名字？" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">专题描述</label>
                        <div class="layui-input-block">
                            <textarea id="classify-info" placeholder="这是一个什么样的专题？" class="layui-textarea"></textarea>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">其他管理员</label>
                        <div class="layui-input-block">
                            <input id="classify-admin" type="text" name="title" lay-verify="title" autocomplete="off" placeholder="来人，帮忙搞事啦！！！" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">是否允许投稿</label>
                        <div class="layui-input-block">
                            <input id="classify-send" type="checkbox" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="是|否">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">投稿是否需要审核</label>
                        <div class="layui-input-block">
                            <input id="classify-check" type="checkbox" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="是|否">
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

        //触发事件
        var active = {
            offset: function(data) {
                layer.open({
                    title: "新增分类",
                    type: 1,
                    offset: 'type',
                    id: 'add-box',
                    content: '<div style="padding:20px">' + text + '</div>',
                    btn: ['确定新增'],
                    btnAlign: 'c',
                    closeBtn: 2,
                    shade: 0.7,
                    area: ['50%', '80%'],
                    yes: function() {
                        var title = $("#classify-title").val();
                        var info = $("#classify-info").val();
                        var admin = $("#classify-admin").val();
                        var flag = $("#classify-send").prop('checked');
                        var send = flag ? '1' : '0';
                        flag = $("#classify-check").prop('checked');
                        var check = flag ? '1' : '0';
                        //layer.msg(send);

                         $.ajax({
                           type:'POST',
                           url:'/janebook/classify',
                           contentType:'application/json',
                           data:JSON.stringify({
                             classifyName: title,
                             classifyInfo: info,
                             classifyAdmin: admin,
                             isSend: send,
                             sendCheck:check
                           }),
                           success:function(){
                               layer.close(layer.index);
                           }

                         })
                    }
                });
            },
            notice: function(data) {

                //layer.msg(JSON.stringify(data));

                //示范一个公告层
                layer.open({
                    type: 1,
                    title: ['修改信息'] //不显示标题栏
                        ,
                    btnAlign: 'c', //按钮居中
                    closeBtn: 2,
                    area: ['50%', '80%'],
                    shade: 0.7,
                    id: 'edit-box' //设定一个id，防止重复弹出
                        ,
                    btn: ['确认修改'],
                    moveType: 1 //拖拽模式，0或者1
                        ,
                    content: '<div style="padding:20px">' + text + '</div>',
                    yes: function() {
                        var title = $("#classify-title").val();
                        var info = $("#classify-info").val();
                        var admin = $("#classify-admin").val();
                        var flag = $("#classify-send").prop('checked');
                        var send = flag ? '1' : '0';
                        flag = $("#classify-check").prop('checked');
                        var check = flag ? '1' : '0';
                        //layer.msg(send);

                        $.ajax({
                            type:'PUT',
                            url:'/janebook/classify',
                            contentType:'application/json',
                            data:JSON.stringify({
                                id:data.id,
                                classifyName: title,
                                classifyInfo: info,
                                classifyAdmin: admin,
                                isSend: send,
                                sendCheck:check
                            }),
                            success:function(){
                                layer.msg("success");
                                layer.close(layer.index-1);
                            }

                        })
                    }
                });
            }
        };

        table.on('tool(classify)', function(obj) {
            if (obj.event === 'edit') {
                var data = obj.data;
                active['notice'].call(this, data);

                if (data.classifyImg != null)
                    $("#classify-img").attr('src', data.classifyImg);
                $("#classify-title").val(data.classifyName);
                $("#classify-info").val(data.classifyInfo);
                $("#classify-admin").val(data.classifyAdmin);
                if (data.isSend == '1') $("#classify-send").attr('checked', true);
                if (data.sendCheck == '1') $("#classify-check").attr('checked', true);
                form.render();
                popContMake();
            } else if (obj.event === 'del') {
                var id = obj.data.id;
                $.ajax({
                  type:"DELETE",
                  url:"/janebook/classify/"+id,
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
                url: '/janebook/classifys/' + parm,
                cols: [
                    [
                        { field: 'id', title: 'ID', width: 80, sort: true, fixed: true }, { field: 'classifyName', title: 'classifyName', width: 600 }, { field: 'classifyInfo', title: 'classifyInfo', width: 900 }, { fixed: 'right', title: '你要搞事!?', width: 200, align: 'center', toolbar: '#barDemo' }
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
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Pick Up Your BookS</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/iconfont.css">
    <link rel="stylesheet" type="text/css" href="./css/MainHome-login.css">
    <link rel="stylesheet" type="text/css" href="./css/mySetting.css">
    <script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>

<body>
<shiro:authenticated>
    <%@include file="nav-login.jsp"%>
</shiro:authenticated>
<shiro:guest>
    <%@include file="nav.jsp"%>
</shiro:guest>
<div class="container settingpart">
    <div class="row">
        <div class="col-md-3 leftside">
            <ul class="leftside-set">
                <li class="basicset">
                    <a href="/janebook/mySetting" class="active">
                        <div class="setting-icon">
                            <i class="iconfont icon-category"></i>
                        </div>
                        <span>基础设置</span>
                    </a>
                </li>
                <li class="basicset">
                    <a href="/janebook/mySettingpre">
                        <div class="setting-icon">
                            <i class="iconfont icon-gerenziliao"></i>
                        </div>
                        <span>个人资料</span>
                    </a>
                </li>
                <li class="basicset">
                    <a href="/janebook/mySettingblanklist">
                        <div class="setting-icon">
                            <i class="iconfont icon-heimingdan"></i>
                        </div>
                        <span>黑名单</span>
                    </a>
                </li>
                <li class="basicset">
                    <a href="/janebook/mySettingaccount">
                        <div class="setting-icon">
                            <i class="iconfont icon-shezhi"></i>
                        </div>
                        <span>账号管理</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-9 rightside">
            <table>
                <thead>
                <tr>
                    <th class="setting-head"></th>
                </tr>
                </thead>
                <tbody class="basicset-right">
                <tr>
                    <td class="toptd">
                        <div>
                            <img src="${user.avatar}">
                        </div>
                    </td>
                    <td class="toptd">
                        <a href="#" class="btn btn-hollow">
                            换头像
                        </a>
                    </td>
                </tr>
                <tr>
                    <td class="setting-title">昵称</td>
                    <td><input type="text" placeholder="${user.userId}" id="nen"></td>
                </tr>
                <tr>
                    <td class="setting-title">电子邮箱</td>
                    <td>
                        <input type="email" placeholder="${user.email}" id="ema">
                        <input type="button" class="btn btn-hollow button-send" value="发送">
                    </td>
                </tr>
                <tr>
                    <td class="setting-title">手机</td>
                    <td class="setting-phone">
                        <div>1881****750</div>
                        <i class="iconfont icon-selected">
                            <span>没问题</span>
                        </i>
                    </td>
                </tr>
                <tr>
                    <td class="setting-title">语言设置</td>
                    <td class="setting-la">
                        <div class="col-md-2">
                            <input type="radio" value="">
                            <span>中文简体</span>
                        </div>
                        <div class="col-md-9">
                            <input type="radio" value="" checked>
                            <span>中文繁体</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="setting-title">接受谁的简信</td>
                    <td class="setting-la">
                        <div class="col-md-2">
                            <input type="radio" value="">
                            <span>所有人</span>
                        </div>
                        <div class="col-md-9">
                            <input type="radio" value="" checked>
                            <span>我关注的人、我发过简信的人</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="setting-title">语言设置</td>
                    <td class="setting-la">
                        <div class="col-md-2">
                            <input type="radio" value="" checked>
                            <span>所有动态</span>
                        </div>
                        <div class="col-md-6">
                            <input type="radio" value="">
                            <span>每天没读汇总</span>
                        </div>
                        <div class="col-md-4">
                            <input type="radio" value="">
                            <span>不接收</span>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
            <input type="submit"  class="btn btn-success setting-save" value="保存" id="save-info">
        </div>
    </div>
</div>
</body>

</html>
<script>
    $(document).ready(function(){
        $("#save-info").click(function(){
            var email = $("#nen").val();
            var neckname =$("#ema").val();
            alert("this=="+email+neckname);
            $.ajax({
                url:'/janebook/updateInfo',
                type:'POST', //GET
                async:true,    //或false,是否异步
                data:{
                    email:email,
                    neckname:neckname
                },
                success: function (data, status) {
                    alert("success");
                },
                fail: function (err, status) {
                    alert("error");
                }
            })
        });
    });
</script>
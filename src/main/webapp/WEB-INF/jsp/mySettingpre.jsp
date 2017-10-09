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
    <link rel="stylesheet" type="text/css" href="./css/mySettingpre.css">
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
                    <a href="/janebook/mySetting" class="">
                        <div class="setting-icon">
                            <i class="iconfont icon-category"></i>
                        </div>
                        <span>基础设置</span>
                    </a>
                </li>
                <li class="basicset">
                    <a href="/janebook/mySettingpre" class="active">
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
                    <td class="setting-title">性别</td>
                    <td class="setting-la">
                        <div class="col-md-2">
                            <input type="radio" value="">
                            <span>男</span>
                        </div>
                        <div class="col-md-2">
                            <input type="radio" value="" >
                            <span>女</span>
                        </div>
                        <div class="col-md-2">
                            <input type="radio" value="" checked>
                            <span>男同</span>
                        </div>
                        <div class="col-md-2">
                            <input type="radio" value="" >
                            <span>女同</span>
                        </div>
                        <div class="col-md-2">
                            <input type="radio" value="" >
                            <span>密密</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="setting-title">个人简介</td>
                    <td>
                        <form>
                            <textarea placeholder="填写你的性取向">通吃</textarea>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td class="setting-title">个人网站</td>
                    <td>
                        <input type="email" placeholder="http://你的网址?  填写后会在个人主页显示图标">
                    </td>
                </tr>

                </tbody>
            </table>
            <input type="submit"  class="btn btn-success setting-save" value="保存">
        </div>
    </div>
</div>
</body>

</html>
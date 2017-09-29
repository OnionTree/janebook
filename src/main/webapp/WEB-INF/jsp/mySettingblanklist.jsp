<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Pick Up Your BookS</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/iconfont.css">
    <link rel="stylesheet" type="text/css" href="./css/MainHome-login.css">
    <link rel="stylesheet" type="text/css" href="./css/mySettingblanklist.css">
    <script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>
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
                        <a href="/janebook/mySettingpre" >
                            <div class="setting-icon">
                                <i class="iconfont icon-gerenziliao"></i>
                            </div>
                            <span>个人资料</span>
                        </a>
                    </li>
                    <li class="basicset">
                        <a href="/janebook/mySettingblanklist" class="active">
                            <div class="setting-icon">
                                <i class="iconfont icon-heimingdan"></i>
                            </div>
                            <span>黑名单</span>
                        </a>
                    </li>
                    <li class="basicset">
                        <a href="/janebook/mySettingaccount" >
                            <div class="setting-icon">
                                <i class="iconfont icon-shezhi"></i>
                            </div>
                            <span>账号管理</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-9 rightside">
                <div class="blacklist">
                    <div class="title">你可以在用户主页将用户加入你的黑名单。在你黑名单中的用户无法在你文章下评论，无法在其它评论中提到你，无法给你发送简信，自动从你的粉丝列表移除且无法再关注你。</div>
                    <ul>
                        <li>
                            <a href="#">皮痒</a>
                            <a>从黑名单中移除</a>
                        </li>
                        <li>
                            <a href="$">微甜</a>
                            <a>从黑名单中移除</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
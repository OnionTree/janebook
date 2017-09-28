<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Pick Up Your BookS</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/iconfont.css">
    <link rel="stylesheet" type="text/css" href="./css/MainHome-login.css">
    <script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>

<body class="night-mode"><!-- 夜间模式 -->
<shiro:authenticated>
    用户[<shiro:principal/>]已身份验证通过
</shiro:authenticated>
<nav class="nav navbar-customs">
    <div class="width-limit">
        <div class="navbar-rightpart" style="float: right;">
            <ul class="nav navbar-nav">
                <li class="theme">
                    <a class="theme-btn"><span class="glyphicon glyphicon-font"></span><span class="glyphicon glyphicon-adjust"></span></a>
                    <div class="modal-popup">
                        <div class="style-mode">
                            <div class="popover-modal">
                                <div class="meta"><i class="glyphicon glyphicon-adjust"></i><span>夜间模式</span></div>
                                <div class="switch day-night-group"><a class="switch-btn active">开</a> <a class="switch-btn">关</a></div> <hr>
                                <div class="switch font-family-group"><a class="switch-btn font-song">宋体</a> <a class="switch-btn font-hei active">黑体</a>
                                </div>
                                <div class="switch"><a class="switch-btn active">简</a> <a class="switch-btn">繁</a></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="user-avatar">
                    <div class="dropdown" style="padding: 10px 15px;">
                        <a class="avatar dropdown-toggle" id="user-dropdownMenu" data-toggle="dropdown">
                            <img src="./images/avatar/user.png" alt="">
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="user-dropdownMenu">
                            <li role="presentation">
                                <a role="menuitem" href="#"><span class="glyphicon glyphicon-user"></span>我的主页</a>
                            </li>
                            <li role="presentation">
                                <a role="menuitem" href="#"><span class="glyphicon glyphicon-bookmark"></span>收藏的文章</a>
                            </li>
                            <li role="presentation">
                                <a role="menuitem" href="#"><span class="glyphicon glyphicon-heart"></span>喜欢的文章</a>
                            </li>
                            <li role="presentation">
                                <a role="menuitem" href="#"><span class="glyphicon glyphicon-cog"></span>设置</a>
                            </li>
                            <li role="presentation">
                                <a role="menuitem" href="#"><span class="glyphicon glyphicon-log-out"></span>退出</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li><a href="#"><button class="btn btn-custom btn-write"><span class="glyphicon glyphicon-pencil"></span>我TM写</button></a></li>
            </ul>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./MainHome-login.html" style="float:left;">
                        <img class="logo-top img-rounded" src="./images/tupian.png" alt=""><span class="logo-text">捡书</span>
                    </a>
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#nav-navbar-collapse">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-bar">
                    <div class="navbar-leftpart collapse navbar-collapse" id="nav-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active first">
                                <a class="before" href="#"><span class="iconfont icon-compass"></span>发现</a>
                                <a class="after" href="#"><span class="iconfont icon-compass" ></span></a>
                            </li>
                            <li class="active">
                                <a class="before" href="#"><span class="iconfont icon-follow01"></span>关注</a>
                                <a class="after" href="#"><span class="iconfont icon-follow01" ></span></a>
                            </li>
                            <li class="active message ">
                                <div class="dropdown hasmessage" >
                                    <div class="dropdown-toggle " id="message-dropdownMenu" data-toggle="dropdown">
                                        <a class="before"><span class="iconfont icon-remind"></span>消息</a>
                                        <a class="after"><span class="iconfont icon-remind"></span></a>
                                        <i class="iconfont icon-xinxiaoxi1"></i>
                                    </div>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="message-dropdownMenu">
                                        <li role="presentation">
                                            <a role="menuitem" href="./Notification.html"><span class="glyphicon glyphicon-comment"></span>我的评论<i class="iconfont icon-xinxiaoxi1"></i></a>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" href="./notifi-chats.html"><span class="glyphicon glyphicon-envelope"></span>我的私信<i class="iconfont icon-xinxiaoxi1"></i></a>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" href="./notifi-like.html"><span class="glyphicon glyphicon-heart-empty"></span>喜欢汗收藏<i class="iconfont icon-xinxiaoxi1"></i></a>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" href="./notifi-follow.html"><span class="iconfont icon-follow01"></span>我的关注<i class="iconfont icon-xinxiaoxi1"></i></a>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" href="./notifi-else.html"><span class="glyphicon glyphicon-list"></span>其他信息<i class="iconfont icon-xinxiaoxi1"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <form class="navbar-form navbar-left" role="search">
                                    <div class="input-group">
                                        <input type="text" class="form-control search-form" placeholder="Search">
                                        <span class="input-group-btn">
													<button class="btn btn-default search-btn" type="button">
													<span class="glyphicon glyphicon-search"></span>
													</button>
												</span>
                                    </div>
                                </form>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
<div class="container main-content">
    <div class="row carousel-contanier">
        <div class="carousel slide" id="recommend-carousel">
            <div class="carousel-inner">
                <div class="item fadein active">
                    <div class="banner">
                        <a href="#" style="">
                            <img src="./images/1.jpg" alt="First slide">
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="banner">
                        <a href="#" style="">
                            <img src="./images/2.jpg" alt="First slide">
                        </a>
                    </div>
                </div>
                <div class="item">
                    <div class="banner">
                        <a href="#" style="">
                            <img src="./images/3.jpg" alt="First slide">
                        </a>
                    </div>
                </div>
            </div>
            <a href="#" class="carousel-control left">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">&lsaquo;</span>
            </a>
            <a href="#" class="carousel-control right">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">&rsaquo;</span>
            </a>
        </div>
    </div>
    <div class="row main">
        <div class="main-left col-md-8 col-xs-8">
            <div class="recommend-collection">
                <a href="#" class="collection">
                    <img src="./images/collection/EntertainmentGossip.png" alt="">
                    <div class="collection-name">娱乐八卦</div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/Animate.jpg" alt="">
                    <div class="collection-name">漫画&动画</div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/Books.jpg" alt="">
                    <div class="collection-name">读书</div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/Prose.jpg" alt="">
                    <div class="collection-name">散文</div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/Camera.png" alt="">
                    <div class="collection-name">摄影</div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/Moyu.jpg" alt="">
                    <div class="collection-name">上班<span style="text-decoration:line-through;">摸鱼</span></div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/Rua.jpg" alt="">
                    <div class="collection-name">猛男</div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/RPG.jpg" alt="">
                    <div class="collection-name">游戏<span style="text-decoration:line-through;">打Gay</span></div>
                </a>
                <a href="#" class="collection">
                    <img src="./images/collection/Music.png" alt="">
                    <div class="collection-name">音乐</div>
                </a>
                <a href="#" class="more-collection">
                    更多热门专题  >
                </a>
            </div>
            <div class="split-line"></div>
            <div class="list-container">
                <ul class="note-list">
                    <li class="note-item">
                        <a class="note-img" href="#">
                            <img src="./images/note/nzsm.jpg">
                        </a>
                        <div class="note-content">
                            <div class="author">
                                <a class="avatar" target="_blank" href="#">
                                    <img class="img-rounded" src="./images/avatar/xjp.jpg">
                                </a>
                                <div class="name">
                                    <a target="_blank" href="#">净瓶先生</a>
                                    <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
                                </div>
                            </div>
                            <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
                            <p class="abstract">
                                Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
                            </p>
                            <div class="meta">
                                <a class="collection-tag" target="_blank" href="#">亚洲图片</a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-eye-open"></span> 233
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-comment"></span> 1
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-heart"></span> 9
                                </a>
                                <a class="dislike">
                                    <i class="iconfont icon-dislike"></i>不爱的
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="note-item">
                        <a class="note-img" href="#">
                            <img src="./images/note/nzsm.jpg">
                        </a>
                        <div class="note-content">
                            <div class="author">
                                <a class="avatar" target="_blank" href="#">
                                    <img class="img-rounded" src="./images/avatar/ws.gif">
                                </a>
                                <div class="name">
                                    <a target="_blank" href="#">エロマンガ先生</a>
                                    <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
                                </div>
                            </div>
                            <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
                            <p class="abstract">
                                Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
                            </p>
                            <div class="meta">
                                <a class="collection-tag" target="_blank" href="#">日本激情</a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-eye-open"></span> 233
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-comment"></span> 1
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-heart"></span> 9
                                </a>
                                <a class="dislike">
                                    <i class="iconfont icon-dislike"></i>不爱的
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="note-item">
                        <a class="note-img" href="#">
                            <img src="./images/note/Gabe.gif">
                        </a>
                        <div class="note-content">
                            <div class="author">
                                <a class="avatar" target="_blank" href="#">
                                    <img class="img-rounded" src="./images/avatar/ha.jpg">
                                </a>
                                <div class="name">
                                    <a target="_blank" href="#">净瓶先生</a>
                                    <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
                                </div>
                            </div>
                            <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
                            <p class="abstract">
                                Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
                            </p>
                            <div class="meta">
                                <a class="collection-tag" target="_blank" href="#">欧美激情</a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-eye-open"></span> 233
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-comment"></span> 1
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-heart"></span> 9
                                </a>
                                <a class="dislike">
                                    <i class="iconfont icon-dislike"></i>不爱的
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="note-item">
                        <a class="note-img" href="#">
                            <img src="./images/note/japali.gif">
                        </a>
                        <div class="note-content">
                            <div class="author">
                                <a class="avatar" target="_blank" href="#">
                                    <img class="img-rounded" src="./images/avatar/kaziya.jpg">
                                </a>
                                <div class="name">
                                    <a target="_blank" href="#">Kaziya</a>
                                    <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
                                </div>
                            </div>
                            <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
                            <p class="abstract">
                                Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
                            </p>
                            <div class="meta">
                                <a class="collection-tag" target="_blank" href="#">国产激情</a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-eye-open"></span> 233
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-comment"></span> 1
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-heart"></span> 9
                                </a>
                                <a class="dislike">
                                    <i class="iconfont icon-dislike"></i>不爱的
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="note-item">
                        <a class="note-img" href="#">
                            <img src="./images/note/k-on.gif">
                        </a>
                        <div class="note-content">
                            <div class="author">
                                <a class="avatar" target="_blank" href="#">
                                    <img class="img-rounded" src="./images/avatar/kaziya.jpg">
                                </a>
                                <div class="name">
                                    <a target="_blank" href="#">Kaziya</a>
                                    <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
                                </div>
                            </div>
                            <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
                            <p class="abstract">
                                Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
                            </p>
                            <div class="meta">
                                <a class="collection-tag" target="_blank" href="#">连载小说</a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-eye-open"></span> 233
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-comment"></span> 1
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-heart"></span> 9
                                </a>
                                <a class="dislike">
                                    <i class="iconfont icon-dislike"></i>不爱的
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="note-item">
                        <a class="note-img" href="#">
                            <img src="./images/note/remi.gif">
                        </a>
                        <div class="note-content">
                            <div class="author">
                                <a class="avatar" target="_blank" href="#">
                                    <img class="img-rounded" src="./images/avatar/kaziya.jpg">
                                </a>
                                <div class="name">
                                    <a target="_blank" href="#">Kaziya</a>
                                    <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
                                </div>
                            </div>
                            <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
                            <p class="abstract">
                                Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
                            </p>
                            <div class="meta">
                                <a class="collection-tag" target="_blank" href="#">连载小说</a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-eye-open"></span> 233
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-comment"></span> 1
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-heart"></span> 9
                                </a>
                                <a class="dislike">
                                    <i class="iconfont icon-dislike"></i>不爱的
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="note-item">
                        <a class="note-img" href="#">
                            <img src="./images/note/kancolle.gif">
                        </a>
                        <div class="note-content">
                            <div class="author">
                                <a class="avatar" target="_blank" href="#">
                                    <img class="img-rounded" src="./images/avatar/kaziya.jpg">
                                </a>
                                <div class="name">
                                    <a target="_blank" href="#">Kaziya</a>
                                    <span class="time" data-shared-at="2017-09-09T20:13:35+08:00">昨天 20:13</span>
                                </div>
                            </div>
                            <a class="title" target="_blank" href="#">我将在这个周末死去（18）住进深不见光的海底</a>
                            <p class="abstract">
                                Chapter18 住进深不见光的海底 朝夕游走的浮云在紫金山头走走停停，十二月就在不经意间流逝而去。我在学校和玉棠、九璟、桐修他们迎来了新的一年，转眼又是一月。记忆里那一年...
                            </p>
                            <div class="meta">
                                <a class="collection-tag" target="_blank" href="#">连载小说</a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-eye-open"></span> 233
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-comment"></span> 1
                                </a>
                                <a target="_blank" href="#">
                                    <span class="glyphicon glyphicon-heart"></span> 9
                                </a>
                                <a class="dislike">
                                    <i class="iconfont icon-dislike"></i>不爱的
                                </a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a  href="#" class="load-more">阅读更多</a>
        </div>
        <%@include file="right-main.jsp"%>
    </div>
</div>
<div class="side-tool">
    <ul>
        <li class="back-to-top">
            <a class="function-btn">
                <i class="iconfont icon-less"></i>
            </a>
        </li>
    </ul>
</div>
<footer class="container footer">
    <div class="row">
        <div class="col-md-8 col-xs-8">
            <div class="footer-sns" style="text-align: center;padding-top: 25px;">
                <ul>
                    <li><a class="" target="_blank" href=""><i class="iconfont icon-yinlian"></i></a></li>
                    <li><a class="" target="_blank" href=""><i class="iconfont icon-zhifubao"></i></a></li>
                    <li><a class="" target="_blank" href=""><i class="iconfont icon-paypal"></i></a></li>
                    <li><a class="" target="_blank" href=""><i class="iconfont icon-bitcoin"></i></a></li>
                    <li><a class="" target="_blank" href=""><i class="iconfont icon-visa"></i></a></li>
                </ul>
            </div>
            <div class="link">
                <a href="#">关于捡书</a>
                <a href="#">联系我们</a>
                <a href="#">加入我们</a>
                <a href="#">我·日天·打钱</a>
                <a href="#">意见反馈</a>
            </div>
            <div class="regist-info" style="text-align: center;padding: 10px;">
                <p>©2017-2018 &nbsp &nbsp 咸鱼代码科技无限公司 &nbsp &nbsp TEL：12580 &nbsp &nbsp 粤IPC备 2333号</p>
                <a href="#" >
                    <img src="./images/common/Verification.png" alt="">
                </a>
            </div>
        </div>
    </div>
</footer>
</body>
<script type="text/javascript">
    $(function(carousel){
        var slideon=setInterval(turnImgs, 3000);
        function fi(e) {
            $(e).addClass('fadein');
        };
        function fo(e) {
            $(e).removeClass('fadein');
        };
        var imgs = $(".carousel-inner").children();
        var imgs_len = $(".carousel-inner").children().length - 1;
        function turnImgs(dir) {
            var cur_index=$(".carousel-inner").children("div.fadein").index();
            // alert(cur_index);
            // alert(imgs.eq(cur_index).html());
            if(dir==1){
                if (cur_index == imgs_len) {
                    fo(imgs.eq(cur_index));
                    fi(imgs.eq(0));
                } else {
                    fo(imgs.eq(cur_index));
                    fi(imgs.eq(cur_index+1));
                }
            }
            else{
                if (cur_index == 0) {
                    fo(imgs.eq(0));
                    fi(imgs.eq(imgs_len));
                } else {
                    fo(imgs.eq(cur_index));
                    fi(imgs.eq(cur_index-1));
                }
            }
        };
        $(".carousel-control.right").click(function(){
            turnImgs(1);
        });
        $(".carousel-control.left").click(function(){
            turnImgs(0);
        });
        $("#recommend-carousel").hover(function() {
            clearInterval(slideon);
        }, function() {
            slideon=setInterval(turnImgs, 3000);
        });
    });
    $(function(to_top){
        $(window).scroll(function(){
            if($(this).scrollTop()<500){
                // $(".back-to-top").show();
                if($(".side-tool").is(":visible")){
                    console.log(1);
                    $(".side-tool").hide();
                }
            }
            else{
                if($(".side-tool").is(":hidden")){
                    console.log(2);
                    $(".side-tool").show();
                }

            }
        });
        $(".side-tool .back-to-top .function-btn").click(function(event) {
            $("body,html").animate({scrollTop:0},900);
        });
    });
    $(function(nav_dropdown){
        $(".navbar-collapse .navbar-nav .message").on('mouseenter',function(e) {
            e.preventDefault();
            $(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
        });

        $(".navbar-collapse .navbar-nav .message").on('mouseleave',function() {
            $(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();
        });
        $(".navbar-collapse .navbar-nav .message").on('click',function() {
            if($(".navbar-collapse .navbar-nav .message .dropdown-menu").is(":hidden")){
                $(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
            }
            else{
                $(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();
            }
        });
        $(".user-avatar .dropdown").mouseenter(function(e) {
            // $(".user-avatar .dropdown-toggle").dropdown('toggle');
            e.preventDefault();
            $(".user-avatar .dropdown-menu").show();
        });
        $(".user-avatar").on('mouseleave',function() {
            // console.log(2);
            $(".user-avatar .dropdown-menu").hide();
        });
        $(".user-avatar").on('click',function() {
            if($(".user-avatar .dropdown-menu").is(":hidden")){
                console.log(2);
                $(".user-avatar .dropdown-menu").show();
            }
            else{
                $(".user-avatar .dropdown-menu").hide();
            }
        });
    });
    $(function(modal){
        $(".theme .theme-btn").on('click',function(){
            if($(".theme .modal-popup").is(":hidden")){
                $(".theme .modal-popup").fadeIn();
            }
            else{
                $(".theme .modal-popup").fadeOut();
            }
        });
    });
    $(function(follow){
        $(".author-list .author-item .follow").on('click',function(){
            if($(this).hasClass('following')){
                $(this).removeClass('following');
                $(this).empty();
                $(this).html("+ 关注");
            }
            else{
                $(this).addClass('following');
                $(this).empty();
                $(this).html('<i class="iconfont icon-selected"></i> 已关注');
            }

        });
    });
    $(function(message_link){
        $("#message-dropdownMenu").on('click',function(){
            window.location.href="./Notification.html";
        });
    });
</script>

</html>
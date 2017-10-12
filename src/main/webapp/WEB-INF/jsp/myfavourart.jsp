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
    <link rel="stylesheet" type="text/css" href="./css/myfavourart.css">
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
<div class="container personal">
    <div class="row">
        <div class="col-md-8 ho-leftpart">
            <div class="top">
                <a href="#" class="avatar">
                    <img src="${user.avatar}">
                </a>
                <div class="title">
                    <a href="" class="name">${topname}</a>
                </div>
                <div class="info">
                    <ul>
                        <li>
                            <div class="mes">
                                <a href="#">
                                    <p>${UserInfo.follow}</p>
                                    关注<i class="iconfont icon-more"></i>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="mes">
                                <a href="#">
                                    <p>${UserInfo.fans}</p>
                                    粉丝<i class="iconfont icon-more"></i>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="mes">
                                <a href="#">
                                    <p>${UserInfo.articleNum}</p>
                                    文章<i class="iconfont icon-more"></i>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="mes">
                                <a href="#">
                                    <p>${UserInfo.wordNum}</p>
                                    字数<i class="iconfont icon-more"></i>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class="mes" style="border:none;">
                                <a href="#">
                                    <p>99800</p>
                                    收获粉丝<i class="iconfont icon-more"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <ul class="center">
                <li class="option active">
                    <a href="#"> 喜欢的文章2</a>
                </li>
                <li class="option">
                    <a href="/janebook/mycollection">收藏的专题/文集3</a>
                </li>
            </ul>
            <div class="bottom">
                <ul class="ming-list" style="border:none;">
                  <c:forEach items="${TFavor}" var="tFavors">
                    <li class="ming">



                        <c:forEach items="${Articleslist}" var="Articleslist">
                            <c:if test="${tFavors.articleId==Articleslist.id}">
                                <a href="#" class="ming-img">
                                    <img src="${Articleslist.img}" alt="">
                                </a>
                            </c:if>
                        </c:forEach>

                        <div class="ming-content">
                            <div class="ming-author">
                                <a href="#" class="avatar">
                                    <img src="${user.avatar}" alt="">
                                </a>
                                <c:forEach items="${Articleslist}" var="Articleslist">
                                    <c:if test="${tFavors.articleId==Articleslist.id}">
                                        <div class="ming-info">
                                                <a target="_blank" href="/janebook/myhomepage?name=${Articleslist.authorName}" class="avatar-name">${Articleslist.authorName}</a>
                                                <span class="avatar-time">${tFavors.createTime}</span>
                                        </div>
                                    </c:if>
                                </c:forEach>

                            </div>
                            <c:forEach items="${Articleslist}" var="Articleslist">
                                <c:if test="${tFavors.articleId==Articleslist.id}">
                                    <a target="_blank" href="/janebook/article/show/${Articleslist.id}" class="ming-title">${Articleslist.title}</a>
                                    <p class="ming-abstract">
                                            ${Articleslist.content}
                                    </p>
                                </c:if>
                            </c:forEach>
                            <div class="ming-meta">
                                <a href="#">
                                    <i class="iconfont icon-liulan"></i>12
                                </a>
                                <a href="#">
                                    <i class="iconfont icon-comments"></i>1
                                </a>
                                <span>
                                        <i class="iconfont icon-Love"></i>2
                                    </span>
                            </div>
                        </div>
                    </li>
                  </c:forEach>
                </ul>
            </div>
        </div>
        <div class="col-md-3 ho-rightpart">
            <div class="title">个人介绍</div>
            <a href="#" class="ming-editor">
                <i class="iconfont icon-edit">编辑</i>
            </a>
            <div class="discrition">
                <div class="ming-text">${user.info}</div>
            </div>
            <ul class="ming-list">
                <li>
                    <a href="#" class="ming-list-sp">
                        <i class="iconfont icon-qrcode"></i>
                        <span >我关注的专题/文集</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="ming-list-sp">
                        <i class="iconfont icon-Love"></i>
                        <span>我喜欢的文章</span>
                    </a>
                </li>
            </ul>
            <div>
                <div class="add-border">
                    <div class="title">我创建的专题</div>
                    <a href="" class="new-topic">
                        <i class="iconfont icon-add"> </i>
                        <span style="color: #9aff9a">新建专题</span>
                    </a>
                    <ul class="topic-list">
                        <li>
                            <a href="/janebook/mytopic" class="ming-collection"><img src="images/test.jpg"></a>
                            <a href="/janebook/mytopic" class="ming-name ming-list-sp">历史文化</a>
                        </li>
                    </ul>
                </div>
                <div>
                    <div class="ming-title" style="font-weight: 400">我的文集</div>
                    <ul class="ming-list" style="border:none;">
                        <li>
                            <a href="">
                                <i class="iconfont icon-wenji"></i>
                            </a>
                            <a href="" class="name">三十六计</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>

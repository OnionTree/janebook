<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>Pick Up Your BookS</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./css/iconfont.css">
	<link rel="stylesheet" type="text/css" href="./css/MainHome-login.css">
	<link rel="stylesheet" type="text/css" href="./css/myhomepage.css">
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
					<img src="images/user.jpg">
				</a>
				<div class="title">
					<a href="#" class="name">${topname}</a>
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
									<p>19800</p>
									收获喜欢<i class="iconfont icon-more"></i>
								</a>
							</div>
						</li>
					</ul>

				</div>
			</div>
			<ul class="center">
				<li class="option active">
					<a href="#"><i class="iconfont icon-articles"></i> 文章</a>
				</li>
				<li class="option">
					<a href="#"><i class="iconfont icon-remind"></i> 动态</a>
				</li>
				<li class="option">
					<a href="#"><i class="iconfont icon-comments"></i> 评论</a>
				</li>
				<li class="option">
					<a href="#"><i class="iconfont icon-hot"></i> 热门</a>
				</li>
			</ul>
			<div class="bottom">
				<ul class="ming-list" style="border:none;">
					<c:forEach items="${TArticle}" var="tArticles">
						<li class="ming">
							<a href="#" class="ming-img">
								<img src="images/green.jpg" alt="">
							</a>
							<div class="ming-content">
								<div class="ming-author">
									<a href="#" class="avatar">
										<img src="images/user.jpg" alt="">
									</a>
									<div class="ming-info">
										<a href="" class="avatar-name">${tArticles.getAuthorName()}</a>
										<span class="avatar-time">${tArticles.getCreateTime()}</span>
									</div>
								</div>
								<a href="#" class="ming-title">${tArticles.getTitle()}</a>
								<p class="ming-abstract">
                                 ${tArticles.getContent()}
								</p>
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
				<div class="ming-text">${info}</div>
			</div>
			<ul class="ming-list">
				<li>
					<a href="#" class="ming-list-sp">
						<i class="iconfont icon-qrcode"></i>
						<span >我关注的专题/文集</span>
					</a>
				</li>
				<li>
					<a href="/janebook/myfavourart" class="ming-list-sp">
						<i class="iconfont icon-Love"></i>
						<span>我喜欢的文章</span>
					</a>
				</li>
			</ul>
			<div>
				<div class="add-border">
					<div class="title">我创建的专题</div>
					<a href="/janebook/mynewtopic" class="new-topic">
						<i class="iconfont icon-add"> </i>
						<span style="color: #9aff9a">新建专题</span>
					</a>
					<ul class="topic-list">
						<li>
							<a href="/janebook/mytopic" class="ming-collection"><img src="images/user.jpg"></a>
							<a href="/janebook/mytopic" class="ming-name ming-list-sp">aaaaaaa</a>
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
							<a href="" class="name">我是真的很帅</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</body>

</html>

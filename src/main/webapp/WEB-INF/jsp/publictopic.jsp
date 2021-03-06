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
	<link rel="stylesheet" type="text/css" href="./css/mytopic.css">
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
<div class="container mytopic">
	<div class="row">
		<div class="col-md-8 topic-left">
			<div class="topic-left-top">
				<a href="#" class="topic-img">
					<img src="images/user.jpg">
				</a>
				<a href="" class="btn btn-defualt topic-follow">
					<i class="iconfont icon-selected">
						<span>已关注</span>
					</i>
				</a>
				<div class="btn btn-hollow topic-collection">投稿</div>
				<div class="topic-title">
					<a href="" class="title">玉蒲团</a>
				</div>
				<div class="topic-info">
					收录了一篇文章-0人关注
				</div>
			</div>
			<ul class="topic-left-center">
				<li class="option active">
					<a href="#"><i class="iconfont icon-comments"></i> 最新评论</a>
				</li>
				<li class="option">
					<a href="#"><i class="iconfont icon-articles"></i> 最新目录</a>
				</li>
				<li class="option">
					<a href="#"><i class="iconfont icon-hot"></i> 热门</a>
				</li>
			</ul>
			<div class="bottom">
				<ul class="ming-list" style="border:none;">
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
									<a href="" class="avatar-name">孔明Kun</a>
									<span class="avatar-time">2017:10:24</span>
								</div>
							</div>
							<a href="#" class="ming-title">食盐实验誓言势焰石岩</a>
							<p class="ming-abstract">
								我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比,我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比
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
									<a href="" class="avatar-name">孔明Kun</a>
									<span class="avatar-time">2017:10:24</span>
								</div>
							</div>
							<a href="#" class="ming-title">食盐实验誓言势焰石岩</a>
							<p class="ming-abstract">
								我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比,我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比
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
				</ul>
			</div>
		</div>
		<div class="col-md-3 ho-rightpart">
			<div class="title">专题公告</div>
			<div class="discrition">
				<div class="ming-text">我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比我想说，我真的是帅的一比</div>
			</div>
			<div>
				<div class="add-border">
					<div class="title">管理员</div>
					<ul class="topic-list">
						<li>
							<a href="" class="ming-collection"><img src="images/user.jpg"></a>
							<a href="" class="ming-name ming-list-sp">我啊</a>
						</li>
						<li>
							<a href="" class="ming-collection"><img src="images/user.jpg"></a>
							<a href="" class="ming-name ming-list-sp">你啊</a>
						</li><li>
						<a href="" class="ming-collection"><img src="images/user.jpg"></a>
						<a href="" class="ming-name ming-list-sp">他啊</a>
					</li>
						<li>
							<a href="" class="ming-collection"><img src="images/user.jpg"></a>
							<a href="" class="ming-name ming-list-sp">你妈啊</a>
						</li>
						<li>
							<a href="" class="ming-collection"><img src="images/user.jpg"></a>
							<a href="" class="ming-name ming-list-sp">你爸啊</a>
						</li>

					</ul>
				</div>
				<div class="add-border" style="padding-bottom: 10px;">
					<div class="title">推荐作者（100）</div>
					<ul class="topic-list">
						<li>
							<a href="" class="ming-collection-pre"><img src="images/user.jpg"></a>
							<a href="" class="ming-collection-pre"><img src="images/user.jpg"></a>
							<a href="" class="ming-collection-pre"><img src="images/user.jpg"></a>
						</li>
					</ul>
				</div>
				<div class="add-border" style="padding-bottom: 10px;">
					<div class="title">关注的人（1000000）</div>
					<ul class="topic-list">
						<li>
							<a href="" class="ming-collection-pre"><img src="images/user.jpg"></a>
							<a href="" class="ming-collection-pre"><img src="images/user.jpg"></a>
							<a href="" class="ming-collection-pre"><img src="images/user.jpg"></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</body>

</html>
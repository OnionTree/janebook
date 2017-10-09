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
	<link rel="stylesheet" type="text/css" href="./css/mycollection.css">
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
<div class="container collect">
	<div class="row">
		<div class="mycollection col-md-8 col-md-offset-2">
			<img src="images/collect-note.png">
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
</div>
</body>
</html>
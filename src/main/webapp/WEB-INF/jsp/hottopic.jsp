<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>Pick Up Your BookS</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./css/iconfont.css">
	<link rel="stylesheet" type="text/css" href="./css/MainHome-login.css">
	<link rel="stylesheet" type="text/css" href="./css/hottopic.css">
	<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container hottopic">
	<img class="hottopicimg" src="images/hottopic.png">
	<ul class="triggle-menu">
		<li class="active">
			<a href="">
				<i class="iconfont icon-tuijian"></i>
				推荐
			</a>
		</li>
		<li class="">
			<a href="">
				<i class="iconfont icon-hot"></i>
				热门
			</a>
		</li>
		<li class="">
			<a href="">
				<i class="iconfont icon-chengshi"></i>
				城市
			</a>
		</li>
		<li class="">
			<a href="">
				<i class="iconfont icon-xiaoyuan"></i>
				校园
			</a>
		</li>
	</ul>
	<div class="row">
		<c:forEach items="${TClassify}" var="tClassify">
		<div class="col-md-4 list-container">
			<div class="collection-wrap">
				<a href="/janebook/mytopic?id=${tClassify.id}">
					<img src="images/user.jpg" class="collrction-img">
					<h4>${tClassify.classifyName}</h4>
					<p>${tClassify.classifyInfo}</p>
				</a>
				<a href="" class="btn btn-success follow">
					<i class="iconfont icon-add"></i>
					<span>关注</span>
				</a>
				<hr>
				<div class="count">
					<a href="">17777篇文章</a> .112313人关注
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
</body>

</html>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<c:forEach items="${TCollection}" var="tCollections">
				<li class="ming">
					<a href="#" class="ming-img">
						<img src="images/green.jpg" alt="">
					</a>
					<div class="ming-content">
						<div class="ming-author">
							<a href="#" class="avatar">
								<img src="images/user.jpg" alt="">
							</a>
							<c:forEach items="${Articleslist}" var="Articleslist">
								<c:if test="${tCollections.articleId==Articleslist.id}">
									<div class="ming-info">
										<a target="_blank" href="/janebook/myhomepage?name=${Articleslist.authorName}" class="avatar-name">${Articleslist.authorName}</a>
										<span class="avatar-time">${tCollections.collectionTime}</span>
									</div>
								</c:if>
							</c:forEach>

						</div>
						<c:forEach items="${Articleslist}" var="Articleslist">
							<c:if test="${tCollections.articleId==Articleslist.id}">
								<a target="_blank" href="/janebook/article/show/${Articleslist.id}" class="ming-title">${Articleslist.title}</a>
								<%--<img class="img-rounded" src="${uu.avatar}">--%>
							</c:if>
						</c:forEach>
						<c:forEach items="${Articleslist}" var="Articleslist">
						<c:if test="${tCollections.articleId==Articleslist.id}">
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
</div>
</body>
</html>
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

					<c:forEach items="${Articleslist}" var="Articleslist">
						<c:if test="${tCollections.articleId==Articleslist.id}">
							<a href="#" class="ming-img">
								<img src="${Articleslist.img}" alt="">
							</a>
						</c:if>
					</c:forEach>



					<div class="ming-content">
						<div class="ming-author">


							<c:forEach items="${Articleslist}" var="Articleslist">
								<c:if test="${tCollections.articleId==Articleslist.id}">

									<c:forEach items="${map}" var="entry">
										<c:if test="${entry.key==Articleslist.authorName}">
											<a href="#" class="avatar">
												<img src="${entry.value}" alt="">
											</a>
										</c:if>
									</c:forEach>


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
							</c:if>
						</c:forEach>
						<c:forEach items="${Articleslist}" var="Articleslist">
						<c:if test="${tCollections.articleId==Articleslist.id}">
							<p class="ming-abstract">
									${Articleslist.content}
							</p>
						<%--</c:if>
						</c:forEach>--%>
						<div class="ming-meta">
							<a href="#">
								<i class="iconfont icon-liulan"></i>${Articleslist.browse}
							</a>
							<a href="#">
								<i class="iconfont icon-comments"></i>${Articleslist.collection}
							</a>
							<span>
                                        <i class="iconfont icon-Love"></i>${Articleslist.reward}
                                    </span>
							</c:if>
							</c:forEach>
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
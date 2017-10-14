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
	<link rel="stylesheet" type="text/css" href="./css/hottopic.css">
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
<div class="container hottopic">
	<img class="hottopicimg" src="images/hottopic.png">
	<ul class="triggle-menu">
		<li class="active">
			<a href="">
				<i class="iconfont icon-tuijian"></i>
				推荐
			</a>
		</li>
	</ul>
	<div class="row">
		<c:forEach items="${TClassify}" var="tClassify">
		<div class="col-md-4 list-container">
			<div class="collection-wrap">
				<a href="/janebook/mytopic?id=${tClassify.id}">
					<img src="${tClassify.classifyImg}" class="collrction-img">
					<h4>${tClassify.classifyName}</h4>
					<p>${tClassify.classifyInfo}</p>
				</a>
				<a href="javascript:void(0)" class="btn btn-success follow">
					<i class="iconfont icon-add"></i>
					<span>关注</span>
				</a>
				<hr>
				<div class="count">
					<a href="">${tClassify.articleNum}篇文章</a> .${tClassify.follow}人关注
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
</body>
<script>
    $(function(follow) {

        $(".follow").on("click", function(event) {

            if ($(this).hasClass('following')) {
					$(this).removeClass("following");
                    $(this).text("+关注");
//                if (event.type == 'mouseenter') {
//                    $(_this).text("取消关注");
//                } else if (event.type == 'mouseleave') {
//                    $(_this).text("正在关注");
//                } else {
//                    $(_this).removeClass('following');
//                    $(_this).text("+ 关注");
//                }
            } else {

                    $(this).addClass('following');
                    $(this).text("正在关注");

            }
        });
    });
</script>
</html>
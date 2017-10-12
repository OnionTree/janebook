<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script type="text/javascript">
        $(function () {
            document.getElementById("change").onclick=function(){
                var url = this.href;
                var args = {"time":new Date()};
                $.getJSON(url,args,function(data){
                    $("#recul").html("");
                    ($.each(data,function (n,v) {
                        $("#recul").append('<li class="author-item">'+
                            '<a class="avatar"  href="#">'+
                            '<img class="img-rounded" src="'+v.avatar+'">'+
                            '</a>'+
                            '<a class="follow following" state="0"><i class="iconfont icon-selected"></i> 已关注</a>'+
                            '<a href="/janebook/myhomepage?name='+v.userId+'" target="_blank" class="name">'+v.userId+'</a>'+
                            '<p>写了29.9k字 · 1.2k喜欢</p>'+
                            '</li>')
                    }))

                });
                return false
            }

        })
	</script>
</head>

<div class="main-right col-md-4 col-xs-4">
	<div class="board">
		<a href="#" class="board-item">
			<img src="./images/board/new.png" alt="">
		</a>
		<a href="#" class="board-item">
			<img src="./images/board/week.png" alt="">
		</a>
		<a href="#" class="board-item">
			<img src="./images/board/month.png" alt="">
		</a>
		<a href="#" class="board-item">
			<img src="./images/board/Repersent.jpg" alt="">
		</a>
		<a href="#" class="board-item">
			<img src="./images/board/Course.jpg" alt="">
		</a>
	</div>
	<div class="daily">
		<div class="title">
			<span>捡书日报</span>
			<a href="#">查看往期</a>
		</div>
		<a href="#" class="daily-content">
			<img src="./images/daily/1.png" alt="">
			<div class="note-title">
				<p>黛玉早报171012 —— 《年轻的我们到底该如何相爱》</p>
			</div>
		</a>
		<a href="#" class="daily-content">
			<img src="./images/daily/2.png" alt="">
			<div class="note-title">
				<p>茶点故事011——自己在家分娩的我，把孩子生在了卫生间里</p>
			</div>
		</a>
	</div>
	<div class="author-recommend">
		<div class="title">
			<span>作者推荐</span>
			<a href="/janebook/change" id="change" class="page-change"><span class="glyphicon glyphicon-refresh"></span>换一批</a>
		</div>
		<ul class="author-list" id="recul">
			<c:forEach items="${TUser}" var="user">
				<li class="author-item">
					<a class="avatar"  href="#">
						<img class="img-rounded" src="${user.avatar}">
					</a>
					<a class="follow following" state="0"><i class="iconfont icon-selected"></i> 已关注</a>
					<a href="/janebook/myhomepage?name=${user.userId}" target="_blank" class="name">${user.userId}</a>
					<p>写了29.9k字 · 1.2k喜欢</p>
				</li>
			</c:forEach>
		</ul>
		<a href="#" class="find-more">
			查看全部 >
		</a>
	</div>
</div>

</html>
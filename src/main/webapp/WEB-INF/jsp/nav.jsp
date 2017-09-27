<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">



<nav class="nav navbar-customs">
	<div class="width-limit">
		<div class="navbar-rightpart" style="float: right;">
			<ul class="nav navbar-nav">
				<li><a href="#"><span class="glyphicon glyphicon-font"></span><span class="glyphicon glyphicon-adjust"></span></a></li>
				<li><a href="/janebook/login">登陆</a></li>
				<li><a href="/janebook/register"><button class="btn btn-custom btn-sign-up" type="button">注册</button></a></li>
				<li><a href="#"><button class="btn btn-custom btn-write"><span class="glyphicon glyphicon-pencil"></span>我TM写</button></a></li>
			</ul>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="navbar-header">
					<a class="navbar-brand" href="./MainHome.html" style="float:left;">
						<img class="logo-top img-rounded" src="./images/tupian1.jpg" alt=""><span class="logo-text">捡书</span>
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
							<li class="active">
								<a class="before" href="#"><span class="glyphicon glyphicon-home"></span>首页</a>
								<a class="after" href="#"><span class="glyphicon glyphicon-home" ></span></a>
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

</html>
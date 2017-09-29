<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">



<nav class="nav navbar-customs">
	<div class="width-limit">
		<div class="navbar-rightpart" style="float: right;">
			<ul class="nav navbar-nav">
				<li class="theme">
					<a class="theme-btn"><span class="glyphicon glyphicon-font"></span><span class="glyphicon glyphicon-adjust"></span></a>
					<div class="modal-popup">
						<div class="style-mode">
							<div class="popover-modal">
								<div class="meta"><i class="glyphicon glyphicon-adjust"></i><span>夜间模式</span></div>
								<div class="switch day-night-group"><a class="switch-btn active">开</a> <a class="switch-btn">关</a></div> <hr>
								<div class="switch font-family-group"><a class="switch-btn font-song">宋体</a> <a class="switch-btn font-hei active">黑体</a>
								</div>
								<div class="switch"><a class="switch-btn active">简</a> <a class="switch-btn">繁</a></div>
							</div>
						</div>
					</div>
				</li>
				<li class="user-avatar">
					<div class="dropdown" style="padding: 10px 15px;">
						<a class="avatar dropdown-toggle" id="user-dropdownMenu" data-toggle="dropdown">
							<img src="./images/avatar/user.png" alt="">
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="user-dropdownMenu">
							<li role="presentation">
								<a role="menuitem" href="/janebook/myhomepage"><span class="glyphicon glyphicon-user"></span>我的主页</a>
							</li>
							<li role="presentation">
								<a role="menuitem" href="/janebook/mycollection"><span class="glyphicon glyphicon-bookmark"></span>收藏的文章</a>
							</li>
							<li role="presentation">
								<a role="menuitem" href="/janebook/myfavourart"><span class="glyphicon glyphicon-heart"></span>喜欢的文章</a>
							</li>
							<li role="presentation">
								<a role="menuitem" href="/janebook/mySetting"><span class="glyphicon glyphicon-cog"></span>设置</a>
							</li>
							<li role="presentation">
								<a role="menuitem" href="/janebook/logout"><span class="glyphicon glyphicon-log-out"></span>退出</a>
							</li>
						</ul>
					</div>
				</li>
				<li><a href="#"><button class="btn btn-custom btn-write"><span class="glyphicon glyphicon-pencil"></span>我TM写</button></a></li>
			</ul>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="navbar-header">
					<a class="navbar-brand" href="/janebook/index" style="float:left;">
						<img class="logo-top img-rounded" src="./images/tupian.png" alt=""><span class="logo-text">捡书</span>
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
							<li class="active first">
								<a class="before" href="#"><span class="iconfont icon-compass"></span>发现</a>
								<a class="after" href="#"><span class="iconfont icon-compass" ></span></a>
							</li>
							<li class="active">
								<a class="before" href="#"><span class="iconfont icon-follow01"></span>关注</a>
								<a class="after" href="#"><span class="iconfont icon-follow01" ></span></a>
							</li>
							<li class="active message ">
								<div class="dropdown hasmessage" >
									<div class="dropdown-toggle " id="message-dropdownMenu" data-toggle="dropdown">
										<a href="/janebook/notification" class="before"><span class="iconfont icon-remind"></span>消息</a>
										<a class="after"><span class="iconfont icon-remind"></span></a>
										<i class="iconfont icon-xinxiaoxi1 mmssgg"></i>
									</div>
									<ul class="dropdown-menu" role="menu" aria-labelledby="message-dropdownMenu">
										<li role="presentation">
											<a role="menuitem" href="/janebook/notification"><span class="glyphicon glyphicon-comment"></span>我的评论<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
										</li>
										<li role="presentation">
											<a role="menuitem" href="/janebook/notifi-chats"><span class="glyphicon glyphicon-envelope"></span>我的私信<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
										</li>
										<li role="presentation">
											<a role="menuitem" href="/janebook/notifi-like"><span class="glyphicon glyphicon-heart-empty"></span>喜欢和收藏<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
										</li>
										<li role="presentation">
											<a role="menuitem" href="/janebook/notifi-follow"><span class="iconfont icon-follow01"></span>我的关注<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
										</li>
										<li role="presentation">
											<a role="menuitem" href="/janebook/notifi-else"><span class="glyphicon glyphicon-list"></span>其他信息<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
										</li>
									</ul>
								</div>
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
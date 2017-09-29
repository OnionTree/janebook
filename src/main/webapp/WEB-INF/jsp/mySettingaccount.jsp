<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>Pick Up Your BookS</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./css/iconfont.css">
	<link rel="stylesheet" type="text/css" href="./css/MainHome-login.css">
	<link rel="stylesheet" type="text/css" href="./css/mySettingaccount.css">
	<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container settingpart">
	<div class="row">
		<div class="col-md-3 leftside">
			<ul class="leftside-set">
				<li class="basicset">
					<a href="/janebook/mySetting" >
						<div class="setting-icon">
							<i class="iconfont icon-category"></i>
						</div>
						<span>基础设置</span>
					</a>
				</li>
				<li class="basicset">
					<a href="/janebook/mySettingpre">
						<div class="setting-icon">
							<i class="iconfont icon-gerenziliao"></i>
						</div>
						<span>个人资料</span>
					</a>
				</li>
				<li class="basicset">
					<a href="/janebook/mySettingblanklist">
						<div class="setting-icon">
							<i class="iconfont icon-heimingdan"></i>
						</div>
						<span>黑名单</span>
					</a>
				</li>
				<li class="basicset">
					<a href="/janebook/mySettingaccount"  class="active">
						<div class="setting-icon">
							<i class="iconfont icon-shezhi"></i>
						</div>
						<span>账号管理</span>
					</a>
				</li>
			</ul>
		</div>
		<div class="col-md-9 rightside">
			<table>
				<thead>
				<tr>
					<th class="setting-head"></th>
				</tr>
				</thead>
				<tbody class="basicset-right">

				<tr>
					<td class="setting-title">打包下载文章</td>
					<td>
						<a href="#" class="btn btn-hollow">下载所有文章</a>
					</td>
				</tr>
				<tr>
					<td class="setting-title">删除账号</td>
					<td>
						<a href="#" class="btn btn-delete">删除账号</a>
					</td>
				</tr>

				</tbody>
			</table>
		</div>
	</div>
</div>
</body>

</html>
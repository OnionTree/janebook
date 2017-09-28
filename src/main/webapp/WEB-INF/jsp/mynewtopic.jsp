<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>Pick Up Your BookS</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./css/iconfont.css">
	<link rel="stylesheet" type="text/css" href="./css/MainHome-login.css">
	<link rel="stylesheet" type="text/css" href="./css/mynewtopic.css">
	<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2 newtopicpart">
			<h3>新建专题</h3>
			<table>
				<thead>
				<tr>
					<th class="setting-head"></th>
					<th></th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>
						<div class="topic-img">
							<img src="images/user.jpg">
						</div>
					</td>
					<td>
						<a href="#" class="btn btn-hollow">上传专题封面</a>
					</td>
				</tr>
				<tr>
					<td class="setting-title">名称</td>
					<td>
						<input type="text" name="" placeholder="请填写名字">
					</td>
				</tr>
				<tr>
					<td class="setting-title">描述</td>
					<td>
						<textarea placeholder="填写描述"></textarea>
					</td>
				</tr>
				<tr>
					<td class="setting-title">其他管理员</td>
					<td>
						<input type="text" name="" placeholder="输入用户名">
					</td>
				</tr>
				<tr>
					<td class="setting-title">是否允许投稿</td>
					<td class="setting-la">
						<div class="col-md-3">
							<input type="radio" value="" checked>
							<span>允许</span>
						</div>
						<div class="col-md-3">
							<input type="radio" value="">
							<span>不允许</span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="setting-title">投稿是否需要审核</td>
					<td class="setting-la">
						<div class="col-md-3">
							<input type="radio" value="" checked>
							<span>需要</span>
						</div>
						<div class="col-md-3">
							<input type="radio" value="">
							<span>不需要</span>
						</div>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
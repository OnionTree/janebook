<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
		<title>Notifications-chats</title>
		<link rel="stylesheet" href="./css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="./css/iconfont.css">
		<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	</head>
	<style type="text/css" role="frame">
		body{
			background-color: #3f3f3f;
			min-width: 768px;
			padding-top: 66px;
		}
		nav{
			position: fixed;
			top: 0;
			left: 0;
			z-index: 99;
			width: 100%;
		}
		@font-face
		{
		font-family: lsFont;
		src: url('./fonts/lsfont.ttf');
		}
		a{
			text-decoration: none;
		}
		a:visited{
			text-decoration: none;
		}
		a:hover{
			text-decoration: none;
		}
		a:focus{
			text-decoration: none;
		}
		.night-mode{
			color: #c8c8c8;
		}
		.night-mode a,{
			color: #969696;
		}
		.night-mode p{
			color: #c8c8c8;
		}
		.night-mode i{
			color: #c8c8c8;
		}
		.width-limit{
			min-width: 768px;
			max-width: 1600px;
			height: 64px;
			margin: 0 auto;
		}
		.navbar-header{
			height: 65px;
		}
		.navbar-header a{
			padding-top: 10px;
			padding-bottom: 0;
			height: 100%;
		}
		.navbar-header a:link{
			color: #a3cf62;
		}
		.navbar-header a:hover{
			color: #a3cf62;
		}
		.navbar-header a:active{
			color: #a3cf62;
		}
		.navbar-header a:visited{
			color: #a3cf62;
		}
		.navbar-brand{
			display: inline-block;
			height: 62px;
		}
		.navbar-brand>img{
			display: inline-block;
		}
		.logo-top{
			height: 45px;
		}
		.logo-text{
			font-family: lsfont;
			font-weight: bolder;
			font-size: 40px;
			vertical-align: middle;
			line-height: 30px;
			display: inline-block;
			margin-left: 5px;
		}
		.navbar-customs {
			background-color: #3f3f3f;
			border-color: #2f2f2f;
		}
		.navbar-nav>li{
			height: 64px;
		}
		.navbar-nav>li>a{
			line-height: 30px;
			color: #c8c8c8;
			height: 64px;
			font-size: 17px;
			font-weight: bold;
		    padding-top: 15px;
    		padding-bottom: 15px;
		}
		.navbar-nav>li>a:hover{
			background-color: #2f2f2f;
		}
		.navbar-nav>li>a:visited{
			background-color: #2f2f2f;
		}
		.navbar-bar .input-group{
			margin-top: auto;
			width: 100%;
		}
		.navbar-bar .input-group-btn{
			position: relative;
			z-index: 99;
			border: none;
		}
		.navbar-bar .navbar-form{
			margin-top: 13px;
		}
		.navbar-bar .input-group-btn:last-child>.btn{
			margin-left: -40px;
		}
		.search-btn{
			position: relative;
			border: none;
			background: #4f4f4f;
			color: #c8c8c8;
		}
		.navbar-bar .input-group .form-control:first-child{
			border-radius: 8px;
		}
		.btn:focus,
		.btn:active:focus,
		.btn.active:focus,
		.btn.focus,
		.btn:active.focus,
		.btn.active.focus {
		    outline: none;
		}
		.btn-custom{
			border-radius: 20px;
			width: 80px;
		}

		.navbar-bar .btn-custom:hover{
			color: #bed742;
			border-color: #bed742;
			border-radius: 20px;
			background-color: rgba(190,215,66,.05);
		}
		.navbar-rightpart .btn-sign-up{
			font-size: 17px;
			width: 80px;
			height: 38px;
			line-height: 26px;
			margin-top: -4px;
			color: #a3cf62;
			border: 1px solid rgba(163,207,98,.7);
			background-color: transparent;
			font-weight: bold;
			transition: background-color 0.2s,border-color 0.2s,color 0.0s;
		 	-webkit-transition: background-color 0.2s,border-color 0.2s,color 0.2s;
		}
		.navbar-rightpart .btn-sign-up:hover{
			color: #bed742;
		    border-color: #bed742;
		    background-color: rgba(190,215,66,.05);
		}
		.navbar-rightpart .btn-write{
			width: 100px;
			height: 40px;
			line-height: 28px;
			border-radius: 20px;
			margin-top: -5px;
			font-size: 17px;
			color: #fff;
			background-color: #a3cf62;
			transition: background-color 0.2s;
		 	-webkit-transition: background-color 0.2s;
		}
		.navbar-rightpart .btn-write:hover{
    		background-color: #bed742;
		}
		.navbar-rightpart .nav li {
			display: inline;
			line-height: 40px;
			list-style-type:none;
		}
		.navbar-rightpart .navbar-nav>li {
			float: left;
		}
		.navbar-header .navbar-toggle{
			float: left;
			padding: 11px 10px;
			margin-top: 9px;
			background-color: transparent;
			background-image: none;
			border: 1px solid  transparent;
			border-color: #2f2f2f;
			border-radius: 4px;
		}
		.navbar-nav{
			margin: 0;
		}
		.navbar-bar .navbar-collapse{
			width: auto;
			background-color: #3f3f3f;
			border-bottom: 1px solid #2f2f2f;
		}
		.navbar-collapse.in {
		 	width: 100vw;
		 	height: auto;
		}
		.navbar-collapse ul .first a{
			color: #a3cf62;
		}
		.navbar-bar .after{
			display: none;
		}
		.navbar-toggle .icon-bar{
			background-color: #c8c8c8;
		}
		.navbar-form .search-form{
			border-color: #4f4f4f;
		    background: #4f4f4f;
		    color: #c8c8c8;
		}
		.navbar-nav>li>a>span{
			line-height: 35px;
		}
		@media screen and (max-width: 1000px) and (min-width: 768px)
			{ 
			a.after {
				display: block!important;
			}
			a.before{
				display: none!important;			
			}
			.nav>li>a{
				padding: 10px 10px;
				line-height: 45px;
			}
		}
		@media screen and (max-width: 894px) and (min-width: 768px)
		{
			.search-form{
				width: 140px!important;
			}
		}
		@media screen and (max-width: 768px)
		{
			.navbar-collapse.in{
				position: relative;
				z-index: 3;
			}
		}
		.navbar-bar ul li a{
			text-align: center;
		}
	</style>
	<style type="text/css" role="log-in-nav">
		.user-avatar{
			width: 80px;
		}
		.user-avatar .avatar{
			display: block;
			width: 45px;
			height: 45px;
			overflow: hidden;
			padding: 0;
			border-radius: 50%;
		}
		.user-avatar .avatar .caret{
			color: #c8c8c8;
			position: absolute;
			top: 50%;
			right: 10%;
		}
		.user-avatar .avatar>img{
			width: 45px;
			/* height: 45px; */
			height: auto;
		}
		.navbar-nav .dropdown-menu{
		    position: absolute;

		    top: 100%;
		    left: 0;
		    background-color: #3f3f3f;
		}
		.user-avatar .dropdown-menu{
			box-shadow: 0 5px 5px #4a4a4a;
			margin-top: 0px;
			border: 0;
		}
		.user-avatar .dropdown-menu a{
			padding: 10px 20px!important;
    		line-height: 30px!important;
		    color: #c8c8c8;
		    transition: all .1s ease;
		}
		.user-avatar .dropdown-menu a:hover{
			color: #c8c8c8;
			background-color: #2f2f2f;
		}
		.dropdown-menu .glyphicon{
			margin-top: -5px;
			margin-right: 15px;
		    font-size: 18px;
		    color: #a3cf62;
		    vertical-align: middle;
		}
		.navbar-collapse .navbar-nav .message .dropdown-toggle{
			padding: 15px 15px;
			text-align: center;
			line-height: 34px;
		}
		.navbar-collapse .navbar-nav .message .dropdown-toggle:hover{
			background-color: #2f2f2f;
		}
		.navbar-collapse .navbar-nav .message .dropdown-toggle a{
		    color: #c8c8c8;
		    /* height: 60px; */
		    font-size: 17px;
		    font-weight: bold;
		}
		.navbar-collapse .navbar-nav .message .dropdown-menu a{
			padding: 10px 20px;
		    line-height: 30px;
		    color: #c8c8c8;
		    transition: all .1s ease;
		    text-align: left;
		    /* background-color:  */
		}
		.navbar-collapse .navbar-nav .message .dropdown-menu a:hover{
			background-color: #2f2f2f;
		}
		.navbar-collapse .navbar-nav .message .dropdown-menu{
			/* position: relative; */
			box-shadow: 0 5px 5px #4a4a4a;
			margin-top: 0px;
			background-color: #3f3f3f;
			width: 100%;
		}
		.navbar-nav .message .dropdown-menu .iconfont{
	        margin-top: -5px;
		    margin-right: 15px;
		    font-size: 18px;
		    color: #a3cf62;
		    vertical-align: middle;
		}
		.message .dropdown-menu>li{
			position: relative;
		}
		.message .icon-xinxiaoxi1{
		    color: #a3cf62;
			position: absolute;
			right: 5px;top: 3px;
			font-size: 10px;
		}
		.message .dropdown-menu .icon-xinxiaoxi1{
			color: #a3cf62;
			position: absolute;
			right: 5px;top: 3px;
			font-size: 10px!important;
		}
		.message .hasmessage{
		}
		.theme .dropdown-toggle{
			color: #c8c8c8;
			display: inline-block;
		}
		.theme .dropdown-toggle span{
			vertical-align: middle;
			color: #c8c8c8;
		    font-size: 17px;
		}.nav .open>a, .nav .open>a:focus, .nav .open>a:hover{
			background-color: transparent;
		}
		@media screen and (max-width: 768px)
		{
			 .navbar-nav .message .dropdown-menu{
				position: relative!important;
				/* display: block;
			    float: none;
			    width: auto; */
			}
			.navbar-nav .message .dropdown-menu a{
				text-align: center!important;
			}
		}
	</style>
	<style type="text/css" role="side-tool">
		.side-tool>ul{
			list-style-type: none;
			padding-left: 0;
		}
		.side-tool>ul>li{
			border: 1px solid rgba(181, 181, 181, 0.2);
			-webkit-transition: .1s ease-in;
			transition: .1s ease-in;
		}
		.side-tool>ul>li:hover{
			background-color: rgba(181, 181, 181, 0.3);
		}
		.icon-less{
			display: block;
			font-size: 22px;
			padding-top: 10px;
		}
		.side-tool .function-btn{
		    width: 50px;
		    height: 50px;
		    text-align: center;
		    display: block;
			-webkit-transition: .1s ease-in;
			transition: .1s ease-in;
		}
		.side-tool {
			display: none;
		    position: fixed;
		    bottom: 50px;
		    right: 50px;
		    z-index: 6;
		}
	</style>
	<style type="text/css" role="main-content">
			.page-container{
				width: 100%;
			    padding: 30px 0;
			    min-height: 800px;
			}
			.list-ul{
				list-style: none;
				/* box-shadow: 0 5px 5px #4a4a4a; */
				margin-top: 0px;
				background-color: #3f3f3f;
				width: auto;
				padding-left: 10px;
			}
			.list-ul>li{
			    line-height: 20px;
				position: relative;
			}
			.list-ul>li>a{
				padding: 10px 20px;
			    line-height: 30px;
			    color: #c8c8c8;
			    transition: all .1s ease;
			    text-align: left;
			    width: auto;
		        border-radius: 4px;
	            height: auto;
			    padding: 10px 25px;
			    line-height: 30px;
			    display: block;
			    font-size: 15px;
			 	vertical-align: middle;
			}
			.list-ul>li.active a{
				background-color: #2f2f2f;
			}
			.list-ul>li{
				-webkit-transition: all .1s ease;
			 	transition: all .1s ease;
			}.list-ul>li:hover{
				background-color: #2f2f2f;
			}
			.list-ul .iconfont{
		        margin-top: -5px;
			    margin-right: 15px;
			    font-size: 24px;
			    color: #a3cf62;
			    vertical-align: middle;
			}
			.list-ul .icon-xinxiaoxi1{
				color: #a3cf62;
				position: absolute;
				right: 5px;top: 3px;
				font-size: 10px!important;
			}
			.list-ul .glyphicon{
				margin-top: -5px;
				margin-right: 15px;
			    font-size: 24px;
			    color: #a3cf62;
			    vertical-align: middle;
			}
			.right-part .menu {
			    margin-bottom: 20px;
			    font-size: 14px;
			    font-weight: 700;
			}
			.chats-container .jianxin-list{
			    list-style: none;
			    padding-left: 0;
		        margin-top: 0;	
				margin-bottom: 10px;
			    font-size: 15px;
			}
			.chats-container .jianxin-list>li{
				position: relative;
		        border-top: 1px solid;
		        border-color: #2f2f2f;
		        line-height: 20px;
			} 
			.chats-container .jianxin-list .pull-right {
			    margin: 20px 20px 0 0;
			    font-size: 13px;
			}
			.chats-container .jianxin-list .pull-right .time {
			   margin-right: 5px;
			}
			.chats-container .jianxin-list .pull-right div {
			    display: inline;
			}
			.chats-container .jianxin-list .dropdown-menu {
			    top: auto;
			    left: auto;
			    right: 15px;
			    color: #333;
		        background-color: #3f3f3f;
			    min-width: inherit;
			}
			.chats-container .jianxin-list .dropdown-menu a {
    			padding: 10px 20px;
			    color: #c8c8c8;
			}
			.chats-container .jianxin-list .dropdown-menu a:hover{
				color: #fff;
    			background-color: #2f2f2f;
			}
			.chats-container .jianxin-list .avatar{
			    float: left;
			    margin: 20px 15px 20px 20px;
			    width: 48px;
			    height: 48px;
			    display: inline-block;
			}
			.chats-container .jianxin-list .avatar>img{
			    width: 48px;
			    height: auto;
			    border-radius: 50%;
			}
			.chats-container .jianxin-list .name {
			    position: absolute;
			    top: 25px;
			    font-size: 15px;
		        color: #c8c8c8;
			}
			.chats-container .jianxin-list .wrap {
			    display: block;
			    padding: 20px 20px 20px 0;
			    min-height: 88px;
			}
			.chats-container .jianxin-list p {
			    margin: 28px 0 0;
			    font-size: 12px;
			    color: #999;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    white-space: nowrap;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    display: -webkit-box;
			    /* -webkit-line-clamp: 3; */
			    -webkit-box-orient: vertical;
			}
			.chats-container .jianxin-list .dropdown-menu i{
			    margin-right: 10px;
			}
			.chats-container .find-nothing{
				margin-top: 150px;
				text-align: center;
			}
			.chats-container .find-nothing img{
				width: 100px;
				vertical-align: middle;
			}
	</style>		
	<style type="text/css" role="footer">
		.footer{
            height: 180px;
            bottom: 0px;
            padding-right: 0;
        }
        .footer .link{
            text-align: center;
            padding-top: 5px;
            padding-bottom: 5px;
        }
        .footer a{
            padding: 5px;
            color: #969696;
            text-decoration-line: none;
            -webkit-transition: .3s ease;
            transition: .3s ease;
        }
        .footer a:hover{
        	color: #c8c8c8;
        }
        .footer-sns ul{
        	padding-left: 0;
     		list-style: none;
        }
        .footer-sns ul li{
        	display: inline-block;
        }
        .footer-sns ul li i{
        	padding: 0 10px;
        	font-size: 25px;
        }
	</style>
	<style type="text/css" role="modal-popup">
		.theme-btn{
			display: inline-block;
			position: relative;
		}
		.modal-popup{
			box-shadow: 0 5px 5px #4a4a4a;
		    position: absolute;
		    display: none;
		    right: -10px;
		    top: 66px;
		    z-index: 1;
		    padding: 20px 20px 20px 24px;
		    /* margin-left: -80px; */
		    min-width: 235px;
		    background-color: #3f3f3f;
		    border-radius: 4px;
		}
		.style-mode .popover-modal:after, .style-mode .popover-modal:before{
	    	position: absolute;
		    top: -10px;
		    left: 78%;
		    content: "";
		    display: inline-block;
		    border: 9px solid transparent;
		    border-top: none;
		}
		.style-mode .popover-modal:after, nav .style-mode .popover-modal:before{
		    position: absolute;
		    top: -10px;
		    left: 78%;
		    content: "";
		    display: inline-block;
		    border: 9px solid transparent;
		    border-top: none;
		    border-bottom-color: #3f3f3f;
	        top: -9px;
    		border-bottom: 9px solid #3f3f3f;
		}
		.style-mode .day-night-group{
			width: auto;
		    vertical-align: middle;
		    display: inline-block;
		    height: auto;
		}
		.style-mode .switch{
		    font-size: 0;
    		letter-spacing: -4px;
		}
		.style-mode .switch-btn{
		    width: 49%;
		    text-align: center;
		    font-size: 14px;
		    letter-spacing: 0!important;
		    color: #969696;
		    border: 1px solid #e5e5e5;
		    vertical-align: middle;
		    display: inline-block;
		}
		.style-mode .meta{
		    padding-left: 4px;
		    margin-right: 16px;
		    font-size: 14px;
		    color: #969696;
		    line-height: 40px;
		    vertical-align: middle;
		    display: inline-block;
		}
		.style-mode .switch-btn:first-child{
		    padding: 10px 13px 10px 17px;
		    border-radius: 20px 0 0 20px;
		    border-right: none;
		}
		.style-mode .switch-btn:last-child {
		    padding: 10px 17px 10px 13px;
		    border-radius: 0 20px 20px 0;
		    border-left: none;
		}
		.navbar-rightpart .nav li{
			line-height: 25px;
		}
		.style-mode .font-family-group {
		    margin-bottom: 10px;
		}
		.style-mode .glyphicon-adjust{
			font-size: 17px;
			display: inline-block;
			top: 3px;
			padding-right: 3px;
		}
		body.night-mode nav .style-mode .switch-btn.active {
		    color: #dcdcdc;
		    background-color: #3f7cc1;
		    box-shadow: inset 0 0 6px rgba(0,0,0,.2);
		}
	</style>	
	<body class="night-mode">
	<%@include file="nav-login.jsp"%>
		<div class="container main-content">
			<div class="row page-container">
				<div class="right-part col-md-3 col-xs-4">
					<div class="tabs-list">
						<ul class="list-ul">
							<li class="">
				            	<a role="menuitem" href="/janebook/Notification"><span class="glyphicon glyphicon-comment"></span>我的评论<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
					        </li>
					        <li class="active">
					            <a role="menuitem" href="/janebook/notifi-chats"><span class="glyphicon glyphicon-envelope"></span>我的私信<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
					        </li>
					        <li class="">
					            <a role="menuitem" href="/janebook/notifi-like"><span class="glyphicon glyphicon-heart-empty"></span>喜欢汗收藏<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
					        </li> 
					        <li class="">
					            <a role="menuitem" href="/janebook/notifi-follow"><span class="iconfont icon-follow01"></span>我的关注<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
					        </li> 
					        <li class="">
					            <a role="menuitem" href="/janebook/notifi-else"><span class="glyphicon glyphicon-list"></span>其他信息<i class="iconfont icon-xinxiaoxi1 mmssgg"></i></a>
					        </li>
						</ul>
					</div>
				</div>
				<div class="right-part col-md-8 col-xs-8">
					<div class="chats-container">
						<div class="menu">全部简信</div> 
						<ul class="jianxin-list" id="msg-box">

						</ul>
						<div class="find-nothing">
							<img src="./images/common/nothing.png"> 
							<div class="tip">这里还木有内容哦~</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="side-tool">
			<ul>
				<li class="back-to-top">
					<a class="function-btn">
						<i class="iconfont icon-less"></i>
					</a>
				</li>
			</ul>
		</div>
		<footer class="container footer">
			<div class="row">
				<div class="col-md-8 col-xs-8">
					<div class="footer-sns" style="text-align: center;padding-top: 25px;">
			          		<ul>
			          		    <li><a class="" target="_blank" href=""><i class="iconfont icon-yinlian"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-zhifubao"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-paypal"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-bitcoin"></i></a></li>
			          		  	<li><a class="" target="_blank" href=""><i class="iconfont icon-visa"></i></a></li>
			          		</ul>
	                </div>
	                <div class="link">
	                	<a href="#">关于捡书</a>
	                    <a href="#">联系我们</a>
	                    <a href="#">加入我们</a>
	                    <a href="#">我·日天·打钱</a>
	                    <a href="#">意见反馈</a>
	                </div>
	                <div class="regist-info" style="text-align: center;padding: 10px;">
	                    <p>©2017-2018 &nbsp &nbsp 咸鱼代码科技无限公司 &nbsp &nbsp TEL：12580 &nbsp &nbsp 粤IPC备 2333号</p>
	                    <a href="#" >
	                    	<img src="./images/common/Verification.png" alt="">
	                    </a>
	                </div>
	            </div>    
			</div>
		</footer>
	</body>
	<script type="text/javascript">
		$(function(){

            Date.prototype.Format = function (fmt) { //author: meizz
                var o = {
                    "M+": this.getMonth() + 1, //月份
                    "d+": this.getDate(), //日
                    "h+": this.getHours(), //小时
                    "m+": this.getMinutes(), //分
                    "s+": this.getSeconds(), //秒
                    "q+": Math.floor((this.getMonth() + 3) / 3), //季度
                    "S": this.getMilliseconds() //毫秒
                };
                if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
                for (var k in o)
                    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
                return fmt;
            }


                $.ajax({
				type:"GET",
				url:"/janebook/messages/"+'${tuser.userId}',
				success:function(data){
				    var flag = 0;
					var sign = $(".mmssgg");
					sign.removeClass('icon-xinxiaoxi1');
                    var msgbox = $("#msg-box");

				    if(data.length>0){
						$.each(data, function(n,obj){
						    var type = obj.type;
						    if(obj.readed!=0){
                                if(!(sign.eq(type).hasClass('icon-xinxiaoxi1'))){
                                    if(!(sign.eq(0).hasClass('icon-xinxiaoxi1')))
                                        sign.eq(0).addClass('icon-xinxiaoxi1');
                                    sign.eq(type).addClass('icon-xinxiaoxi1');
                                    sign.eq(parseInt(type)+5).addClass('icon-xinxiaoxi1');
                                    //alert(sign.eq(parseInt(type)+5).parent().html());
                                }
							}


							if(type == '2'){
						        if(flag == 0){
                                    msgbox.html("");
                                    $(".find-nothing").hide();
                                    flag = 1;
								}
						        $.ajax({
									type:"GET",
									url:"/janebook/user/"+obj.sendId,
									success:function(sender){
                                        var html = '<li class="jianxin-item" id="msg-box">' +
                                            '<div class="pull-right">' +
                                            '<span class="time">'+(new Date(obj.time)).Format("yyyy-MM-dd")+'</span>' +
                                            '<div>' +
                                            '<a data-toggle="dropdown">' +
                                            '<i class="iconfont icon-moreunfold"></i>' +
                                            '</a>' +
                                            '<ul class="dropdown-menu">' +
                                            '<li>' +
                                            '<a>' +
                                            '<i class="iconfont icon-delete"></i>删除会话' +
                                            '</a>' +
                                            '</li>' +
                                            '<li>' +
                                            '<a>' +
                                            '<i class="iconfont icon-information"></i>加入黑名单' +
                                            '</a>' +
                                            '</li>' +
                                            '<li>' +
                                            '<a class="report">' +
                                            '<span>' +
                                            '<i class="iconfont icon-cry"></i>举报用户' +
                                            '</span>' +
                                            '</a>' +
                                            '</li>' +
                                            '</ul>' +
                                            '</div>' +
                                            '</div>' +
                                            '<a href="#" target="_blank" class="avatar">' +
                                            '<img src="'+sender.avatar+'">' +
                                            '</a>' +
                                            '<a href="#" target="_blank" class="name">'+sender.nickname+'</a>' +
                                            '<a href="#" class="wrap">' +
                                            '<p class="chat-content">'+obj.mesContent+'</p>' +
                                            '</a>' +
                                            '</li>';
                                        msgbox.append(html);
									}
								})

							}
						})
					}
				}
			})
		})
  		$(function(carousel){
  			var slideon=setInterval(turnImgs, 3000);
  			function fi(e) {
				$(e).addClass('fadein');
			};
			function fo(e) {
				$(e).removeClass('fadein');
			};
  			var imgs = $(".carousel-inner").children();
			var imgs_len = $(".carousel-inner").children().length - 1;

			function turnImgs(dir) {
	   	 		var cur_index=$(".carousel-inner").children("div.fadein").index();
			    // alert(cur_index);
			    // alert(imgs.eq(cur_index).html());
			    if(dir==1){
			    	if (cur_index == imgs_len) {
				      fo(imgs.eq(cur_index));
				      fi(imgs.eq(0));
				    } else {
				      fo(imgs.eq(cur_index));
				      fi(imgs.eq(cur_index+1));
				    }
			    }
			    else{
			    	if (cur_index == 0) {
				      fo(imgs.eq(0));
				      fi(imgs.eq(imgs_len));
				    } else {
				      fo(imgs.eq(cur_index));
				      fi(imgs.eq(cur_index-1));
				    }
				}
			  };		
			$(".carousel-control.right").click(function(){
			 	turnImgs(1);
			});
			$(".carousel-control.left").click(function(){
			 	turnImgs(0);
			});
			$("#recommend-carousel").hover(function() {
				clearInterval(slideon);
			}, function() {
				slideon=setInterval(turnImgs, 3000);
			});
    	});
    	$(function(to_top){
    		$(window).scroll(function(){
    			if($(this).scrollTop()<500){
    				// $(".back-to-top").show();
    				if($(".side-tool").is(":visible")){
    					console.log(1);
    					$(".side-tool").hide();
    				}	
    			}
    			else{
    				if($(".side-tool").is(":hidden")){
    					console.log(2);
    					$(".side-tool").show();
    				}
    				
    			}
    		});
			$(".side-tool .back-to-top .function-btn").click(function(event) {
				$("body,html").animate({scrollTop:0},900);
			});
    	});
    	$(function(nav_dropdown){
    		$(".navbar-collapse .navbar-nav .message").on('mouseenter',function(e) {
    			e.preventDefault();
    			$(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
    		});
    		
    		$(".navbar-collapse .navbar-nav .message").on('mouseleave',function() {
				$(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();			
    		});
    		$(".navbar-collapse .navbar-nav .message").on('click',function() {
				if($(".navbar-collapse .navbar-nav .message .dropdown-menu").is(":hidden")){
    				$(".navbar-collapse .navbar-nav .message .dropdown-menu").show();
    			}
    			else{
    				$(".navbar-collapse .navbar-nav .message .dropdown-menu").hide();	
    			}			
    		});

    		$(".user-avatar .dropdown").mouseenter(function(e) {
    			// $(".user-avatar .dropdown-toggle").dropdown('toggle');
    			e.preventDefault();
    			$(".user-avatar .dropdown-menu").show();
    		});
    		$(".user-avatar").on('mouseleave',function() {
    			// console.log(2);
				$(".user-avatar .dropdown-menu").hide();
    		});
    		$(".user-avatar").on('click',function() {
    			if($(".user-avatar .dropdown-menu").is(":hidden")){
    				console.log(2);
    				$(".user-avatar .dropdown-menu").show();
    			}
    			else{
    				$(".user-avatar .dropdown-menu").hide();
    			}
    		});
    	});
    	$(function(modal){
    		$(".theme .theme-btn").on('click',function(){
    			if($(".theme .modal-popup").is(":hidden")){
    				$(".theme .modal-popup").fadeIn();
    			}
    			else{
    				$(".theme .modal-popup").fadeOut();
    			}
    		});
    	});
    	$(function(follow){
    		$(".author-list .author-item .follow").on('click',function(){
    			if($(this).hasClass('following')){
    				$(this).removeClass('following');
    				$(this).empty();
    				$(this).html("+ 关注");
    			}
    			else{
    				$(this).addClass('following');
    				$(this).empty();
    				$(this).html('<i class="iconfont icon-selected"></i> 已关注');
    			}
				
    		});
    	});
    	$(function(report){
    		$(".comment-container .comment-list .meta").hover(function() {
    			var cur=$(this).children(".report");
    			$(cur).show();
    		}, function() {
    			$(".comment-container .comment-list .meta .report").hide();
    		});
    	});
    	$(function(message_link){
			$("#message-dropdownMenu").on('click',function(){
				window.location.href="/janebook/notification";
			});
    	});
	</script>

</html>